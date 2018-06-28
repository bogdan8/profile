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
#  posted_on         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Article < ApplicationRecord
end
