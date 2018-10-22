class OfferMailer < ActionMailer::Base
  default to: 'alistair.g.duff@gmail.com'
  
  def offer_email(client_name, email, body)
    @name = client_name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Offer Form Message')
  end
end