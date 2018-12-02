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
  size_photo_images = { medium: '300x300>', thumb: '100x100>' }
  path_photo_images = ':rails_root/public/images/:class/:attachment/:id/:style/:filename'

  has_many :networks, inverse_of: :contact
  accepts_nested_attributes_for :networks, reject_if: :all_blank, allow_destroy: true

  has_attached_file :photo,
                    styles: size_photo_images,
                    path: path_photo_images,
                    default_url: '/images/missing.png'
  validates_attachment_content_type :photo, content_type: %r{\Aimage\/.*\Z}
end
