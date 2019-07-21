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

FactoryBot.define do
  factory :book do
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'photo.jpg'), 'image/jpeg') }
    alt { 'new image for testing' }
    src { 'https://www.google.com.ua/' }
  end
end
