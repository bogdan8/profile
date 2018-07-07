# == Schema Information
#
# Table name: categorizations
#
#  id          :bigint(8)        not null, primary key
#  article_id  :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :categorization do
    article_id 1
    category_id 1
  end
end
