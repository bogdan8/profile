# frozen_string_literal: true

# == Schema Information
#
# Table name: category_books
#
#  id       :bigint(8)        not null, primary key
#  title    :string
#  position :integer          default(0), not null
#

FactoryBot.define do
  factory :category_book do
    title { 'Programming' }
  end
end
