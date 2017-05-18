class CreateSocailLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :socail_links do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
