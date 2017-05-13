class AddImageToPortfolio < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :long_landscape, :string
    add_column :portfolios, :long_potrait, :string
    add_column :portfolios, :square, :string
  end
end
