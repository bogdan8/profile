# frozen_string_literal: true

# == Schema Information
#
# Table name: contacts
#
#  id                 :bigint(8)        not null, primary key
#  name               :string
#  date_of_birth      :date
#  address            :string
#  email              :string
#  phone              :string
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :bigint(8)
#  photo_updated_at   :datetime
#

class Contact < ApplicationRecord
  has_one_attached :photo
  has_many :networks, inverse_of: :contact, dependent: :destroy
  accepts_nested_attributes_for :networks, reject_if: :all_blank, allow_destroy: true
end

