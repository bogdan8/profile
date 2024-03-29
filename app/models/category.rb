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

class Category < ApplicationRecord
  extend FriendlyId

  acts_as_list

  default_scope { order(:position) }

  friendly_id :title, use: :slugged

  has_many :categorizations, dependent: :destroy
  has_many :articles, through: :categorizations

  validates :title, presence: true
end
