require 'rails_helper'

RSpec.describe Categorization, type: :model do
  describe '#relations' do
    it { is_expected.to belong_to :article }
    it { is_expected.to belong_to :category }
  end
end
