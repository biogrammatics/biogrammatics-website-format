class ContactMailer < ApplicationMailer
  # TODO: set your destination email address here:
  default from: "noreply@biogrammatics.com", to: "info@mysite.com"

  def contact_email
    @data = params.slice(:first_name, :last_name, :email, :phone, :subject, :message)

    mail(
      reply_to: @data[:email],
      subject: @data[:subject].presence || "Website Inquiry"
    )
  end
end
