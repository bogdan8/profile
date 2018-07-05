require 'rails_helper'

RSpec.describe Category, type: :model do
  describe '#relations' do
    it { is_expected.to have_many :categorizations }
    it { is_expected.to have_many :articles }
  end
end
