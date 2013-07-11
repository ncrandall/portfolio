class ContactsController < ApplicationController
  def new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:success] = "Your message has been received!"
      ContactMailer.contact_email(@contact).deliver
      redirect_to contact_path
    else
      flash[:error] = "There was an issue with your contact form"
      render 'static/contact'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:phone, :body, :email, :name)
  end
end
