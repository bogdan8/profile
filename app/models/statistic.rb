# frozen_string_literal: true

# == Schema Information
#
# Table name: statistics
#
#  id         :bigint(8)        not null, primary key
#  ip_address :string
#  browser    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Statistic < ApplicationRecord
end
