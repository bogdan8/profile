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
  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations

  validates :title, :short_description, :long_description, presence: true
end
