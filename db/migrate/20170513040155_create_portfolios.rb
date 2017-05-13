class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :client
      t.date :completed
      t.text :about

      t.timestamps
    end
  end
end
