# frozen_string_literal: true

# == Schema Information
#
# Table name: category_books
#
#  id       :bigint(8)        not null, primary key
#  title    :string
#  position :integer          default(0), not null
#

require 'rails_helper'

RSpec.describe CategoryBook, type: :model do
  describe '#relations' do
    it { is_expected.to have_many :books }
  end
end
