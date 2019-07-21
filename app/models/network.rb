# frozen_string_literal: true

# == Schema Information
#
# Table name: networks
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  link       :string
#  icon       :string
#  contact_id :bigint(8)
#

class Network < ApplicationRecord
  belongs_to :contact
end
