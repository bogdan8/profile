# frozen_string_literal: true

class ContactsController < ApplicationController
  def show
    @contact = Contact.first_or_create
  end
end
