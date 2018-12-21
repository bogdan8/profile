# frozen_string_literal: true

# == Schema Information
#
# Table name: contacts
#
#  id                 :bigint(8)        not null, primary key
#  name               :string
#  date_of_birth      :date
#  address            :string
#  email              :string
#  phone              :string
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :bigint(8)
#  photo_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe '#relations' do
    it { is_expected.to have_many :networks }
  end
end
