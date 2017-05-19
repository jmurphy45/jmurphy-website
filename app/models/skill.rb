# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Skill < ApplicationRecord

  has_many :portfolio_skills
  has_many :portfolios, through: :portfolio_skills


end
