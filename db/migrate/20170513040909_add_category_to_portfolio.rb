class AddCategoryToPortfolio < ActiveRecord::Migration[5.1]
  def change
    add_reference :portfolios, :category, foreign_key: true
  end
end
