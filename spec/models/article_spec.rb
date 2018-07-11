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

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#relations' do
    it { is_expected.to have_many :categories }
  end

  describe '#validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :short_description }
    it { is_expected.to validate_presence_of :long_description }
  end
end
