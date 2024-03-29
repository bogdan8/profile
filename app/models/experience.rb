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

class Experience < ApplicationRecord
  acts_as_list

  default_scope { order(:position) }

  has_many :works, inverse_of: :experience, dependent: :destroy
  accepts_nested_attributes_for :works, reject_if: :all_blank, allow_destroy: true
end
