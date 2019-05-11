# frozen_string_literal: true

# == Schema Information
#
# Table name: category_books
#
#  id       :bigint(8)        not null, primary key
#  title    :string
#  position :integer          default(0), not null
#

class CategoryBook < ApplicationRecord
  acts_as_list

  default_scope { order(:position) }

  has_many :books, dependent: :destroy
end
