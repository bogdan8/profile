# frozen_string_literal: true

# == Schema Information
#
# Table name: category_books
#
#  id    :bigint(8)        not null, primary key
#  title :string
#

class CategoryBook < ApplicationRecord
  acts_as_list

  has_many :books, dependent: :destroy
end
