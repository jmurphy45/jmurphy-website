class AddCoverToPortfolio < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :cover, :string
  end
end
