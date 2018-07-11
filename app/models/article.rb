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

class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations

  validates :title, :short_description, :long_description, presence: true
end
