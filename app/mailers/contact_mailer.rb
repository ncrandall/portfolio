class ContactMailer < ActionMailer::Base
  default from: "contact@nicholascrandall.com"

  def contact_email(contact)
    @contact = contact
    mail(to: ENV['PERSONAL_EMAIL'], subject: "New Contact From #{contact.email}")
  end

end
