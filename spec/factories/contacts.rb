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

FactoryBot.define do
  factory :contact do
    name { Faker::SiliconValley.character }
    date_of_birth { Time.zone.now }
    address { Faker::SiliconValley.character }
    email { Faker::SiliconValley.email }
    phone { '0999999999' }
    photo { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'photo.jpg'), 'image/jpeg') }
  end
end
