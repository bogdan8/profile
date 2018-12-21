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

require 'rails_helper'

RSpec.describe Work, type: :model do
  describe '#relations' do
    it { is_expected.to belong_to :experience }
  end
end
