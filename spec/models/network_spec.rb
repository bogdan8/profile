# frozen_string_literal: true

# == Schema Information
#
# Table name: networks
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  link       :string
#  icon       :string
#  contact_id :bigint(8)
#

require 'rails_helper'

RSpec.describe Network, type: :model do
  describe '#relations' do
    it { is_expected.to belong_to :contact }
  end
end
