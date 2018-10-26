class OfferMailer < ActionMailer::Base
  default to: 'aduff@laingorourke.com'
  
  def offer_email(client_name, email, mobile, delivery_address, postcode, description, comments)
    @name = client_name
    @email = email
    @mobile = mobile
    @delivery_address = delivery_address
    @postcode = postcode
    @description = description
    @comments = comments
    
    mail(from: email, subject: 'Offer Form Message')
  end
end