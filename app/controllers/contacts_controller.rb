class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      begin
        ContactMailer.with(
          first_name: @contact.first_name,
          last_name: @contact.last_name,
          email: @contact.email,
          phone: @contact.phone,
          subject: @contact.subject,
          message: @contact.message
        ).contact_email.deliver_now

        redirect_to root_path, notice: "Thanks! We'll be in touch."
      rescue StandardError => e
        Rails.logger.error("Contact form error: #{e.message}")
        redirect_to contact_path, alert: "Sorry, there was an error sending your message. Please try again."
      end
    else
      redirect_to contact_path, alert: "Please check your information: #{@contact.errors.full_messages.join(', ')}"
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone, :subject, :message)
  end
end
