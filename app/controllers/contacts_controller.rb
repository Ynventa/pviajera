class ContactsController < ApplicationController
  before_action :load_vars

  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(person_params)

    if @contact.save
      redirect_to contacts_path, notice: "Contacto enviado satisfactoriamente"
    else
      redirect_to new_contact_path, alert: @contact.errors.full_messages.join("<br>")
    end

  end

private
  def person_params
    params.require(:contact).permit(:name, :email, :phone, :comment)
  end
end
