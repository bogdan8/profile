# frozen_string_literal: true

module Users
  class ContactsController < BaseController
    before_action :set_contact, only: %i[index new edit update]
    before_action :authenticate_user!

    def index; end

    def new; end

    def edit; end

    def update
      if @contact.update(contact_params)
        render :edit, notice: 'Contact was successfully updated.'
      else
        render :edit
      end
    end

    private

    def set_contact
      @contact = Contact.first_or_create
    end

    def contact_params
      params.require(:contact).permit(:name, :date_of_birth, :address, :email, :phone, :photo, networks_attributes: [:id, :title, :link, :icon, :_destroy])
    end
  end
end
