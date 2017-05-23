class PortfolioSkill < ApplicationRecord
  belongs_to :portfolio,required: false
  belongs_to :skill, required: false
end
