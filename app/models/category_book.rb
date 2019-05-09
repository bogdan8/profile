# frozen_string_literal: true

# == Schema Information
#
# Table name: category_books
#
#  id    :bigint(8)        not null, primary key
#  title :string
#

class CategoryBook < ApplicationRecord
  has_many :books
end
