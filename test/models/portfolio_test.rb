# == Schema Information
#
# Table name: portfolios
#
#  id             :integer          not null, primary key
#  name           :string
#  client         :string
#  completed      :date
#  about          :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  category_id    :integer
#  skill_id       :integer
#  long_landscape :string
#  long_potrait   :string
#  square         :string
#  cover          :string
#

require 'test_helper'

class PortfolioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
