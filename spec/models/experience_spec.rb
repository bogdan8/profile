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

require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe '#relations' do
    it { is_expected.to have_many :works }
  end
end
