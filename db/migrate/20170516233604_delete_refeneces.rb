class DeleteRefeneces < ActiveRecord::Migration[5.1]
  def change
    remove_column :portfolios, :category_id
    remove_column :portfolios, :skill_id
  end
end
