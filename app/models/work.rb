# frozen_string_literal: true

# == Schema Information
#
# Table name: works
#
#  id            :bigint(8)        not null, primary key
#  title         :string
#  date          :string
#  color         :string
#  experience_id :bigint(8)
#

class Work < ApplicationRecord
  belongs_to :experience
end
