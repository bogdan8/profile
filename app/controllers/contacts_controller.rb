# frozen_string_literal: true

class ContactsController < ApplicationController
  before_action :save_statistic, only: :contact

  def show
    @contact = Contact.first_or_create
  end

  private

  def save_statistic
    Statistic.create(ip_address: request.ip, browser: request.env['HTTP_USER_AGENT'])
  end
end
