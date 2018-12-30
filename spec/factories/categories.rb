# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer          default(0)
#

FactoryBot.define do
  factory :category do
    title { Faker::SiliconValley.invention }
  end
end
