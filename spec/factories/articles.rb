# frozen_string_literal: true

# == Schema Information
#
# Table name: articles
#
#  id                :bigint(8)        not null, primary key
#  title             :string
#  slug              :string
#  short_description :text
#  long_description  :text
#  author            :string
#  link              :string
#  posted_at         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryBot.define do
  factory :article do
    title { Faker::SiliconValley.character }
    short_description { Faker::SiliconValley.quote }
    long_description { Faker::SiliconValley.quote }
    author { Faker::SiliconValley.character }
    link { Faker::SiliconValley.url }
    posted_at { 'Today' }
  end
end
