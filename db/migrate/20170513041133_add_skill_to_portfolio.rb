class AddSkillToPortfolio < ActiveRecord::Migration[5.1]
  def change
    add_reference :portfolios, :skill, foreign_key: true
  end
end
