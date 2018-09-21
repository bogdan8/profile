# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id                 :bigint(8)        not null, primary key
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :bigint(8)
#  image_updated_at   :datetime
#  alt                :string
#  src                :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Book < ApplicationRecord
  size_book_images = { medium: '300x300>', thumb: '100x100>' }
  path_book_images = ':rails_root/public/images/:class/:book/:id/:style/:filename'

  has_attached_file :image,
                    styles: size_book_images,
                    path: path_book_images,
                    url: '/images/:class/:book/:id/:style/:filename',
                    default_url: '/images/missing.png'
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}
end