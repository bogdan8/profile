require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#relations' do
    it { is_expected.to have_many :categories }
  end
end
