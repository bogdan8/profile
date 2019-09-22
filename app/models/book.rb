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
#  position           :integer          default(0)
#  category_book_id   :bigint(8)
#

class Book < ApplicationRecord
  acts_as_list scope: %i[category_book_id]

  default_scope { order(:category_book_id, :position) }

  has_one_attached :image

  belongs_to :category_book

  validates :category_book, presence: true
end
