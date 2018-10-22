class OfferMailer < ActionMailer::Base
  default to: 'aduff@laingorourke.com'
  
  def offer_email(client_name, email, body)
    @name = client_name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Offer Form Message')
  end
end