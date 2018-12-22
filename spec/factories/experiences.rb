# frozen_string_literal: true

# == Schema Information
#
# Table name: experiences
#
#  id       :bigint(8)        not null, primary key
#  title    :string
#  color    :string
#  position :integer          default(0)
#

FactoryBot.define do
  factory :experience do
    title Faker::SiliconValley.company
    color 'green'
  end
end
