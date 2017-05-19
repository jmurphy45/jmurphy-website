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

class Portfolio < ApplicationRecord
  mount_uploader :square, PortfolioUploader
  mount_uploader :long_potrait, PortfolioUploader
  mount_uploader :long_landscape, PortfolioUploader
  mount_uploader :cover, PortfolioUploader

  belongs_to :category

  has_many :portfolio_skills,:dependent => :destroy
  has_many :skills, through: :portfolio_skills


  def all_tags=(names)
    self.skills = names.split(",").map do |name|
      Skill.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.skills.map(&:name).join(", ")
  end

  def remove_skill_tags
    PortfolioSkill.where(portfolio_id: id).destroy_all
  end


end
