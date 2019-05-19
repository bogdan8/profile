# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id                 :bigint(8)        not null, primary key
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :bigint(8)
#  image_updated_at   :datetime
#  alt                :string
#  src                :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  position           :integer          default(0)
#  category_book_id   :bigint(8)
#

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe '#relations' do
    it { is_expected.to belong_to :category_book }
  end

  describe '#validations' do
    it { is_expected.to validate_presence_of :category_book }
  end
end
