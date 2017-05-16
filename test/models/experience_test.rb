# == Schema Information
#
# Table name: experiences
#
#  id          :integer          not null, primary key
#  company     :string
#  job         :string
#  start_date  :date
#  end_date    :date
#  description :text
#  city        :string
#  state       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ExperienceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
