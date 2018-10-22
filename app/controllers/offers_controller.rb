class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end
  
  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      name = params[:offer][:client_name]
      email = params[:offer][:email]
      body = params[:offer][:order_description]
      OfferMailer.offer_email(name, email, body).deliver
      redirect_to new_offer_path, notice: "Message Sent."
    else
      redirect_to new_offer_path, notice: "Error Occured!"
    end
  end
  
  private
    def offer_params
      params.require(:offer).permit(:client_name, :email, :mobile, :delivery_address, :postcode, :order_description, :comments)
    end
    
end