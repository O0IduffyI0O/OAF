class OffersController < ApplicationController
  
  # GET request to /offers/new
  # Show new contact form
  def new
    @offer = Offer.new
  end
  
  # POST request to /offers
  def create
    # Mass assignment of form fields into Offer object
    @offer = Offer.new(offer_params)
    # Save the Offer object to the database
    if @offer.save
      # Store form fields via paramaters into variables
      name = params[:offer][:client_name]
      email = params[:offer][:email]
      mobile = params[:offer][:mobile]
      delivery_address = params[:offer][:delivery_address]
      postcode = params[:offer][:postcode]
      description = params[:offer][:order_description]
      comments = params[:offer][:comments]
      # Plug variables into Contact Mailer email method
      # and send email
      OfferMailer.offer_email(name, email, mobile, delivery_address, postcode, description, comments).deliver
       # Redirect to the "new" action
       flash[:success] = "Message Sent!"
      redirect_to new_offer_path
    else
      # If Offer object doesn't save
      # redirect to the "new" action
      flash[:error] = @offer.errors.full_messages.join(", ")
      redirect_to new_offer_path
    end
  end
  
  def index
  end
  
  def show
    @offer = Offer.find_by(id: params[:id])
    if @offer.nil?
        redirect_to offers_path
    end
  end
  
  private
    # To collect data from forms
    # we need to use stron parameters
    # and whitelist form fields
    def offer_params
      params.require(:offer).permit(:client_name, :email, :mobile, :delivery_address, :postcode, :order_description, :comments)
    end
    
end