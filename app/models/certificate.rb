# frozen_string_literal: true

# == Schema Information
#
# Table name: certificates
#
#  id           :bigint(8)        not null, primary key
#  alt          :string
#  src          :string
#  completed_at :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Certificate < ApplicationRecord
  has_one_attached :image
end
