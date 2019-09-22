# frozen_string_literal: true
# == Schema Information
#
# Table name: attachments
#
#  id                 :bigint(8)        not null, primary key
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  small              :string           default("")
#  medium             :string           default("")
#  large              :string           default("")
#  extra_large        :string           default("")
#  position           :integer          default(0)
#  extra_small        :string           default("")
#

FactoryBot.define do
  factory :attachment do
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'photo.jpg'), 'image/jpeg') }
    extra_small { 2 }
    small { 2 }
    medium { 2 }
    large { 2 }
    extra_large { 2 }
  end
end
