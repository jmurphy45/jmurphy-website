class CreatePortfolioSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolio_skills do |t|
      t.belongs_to :portfolio, foreign_key: true
      t.belongs_to :skill, foreign_key: true

      t.timestamps
    end
  end
end
