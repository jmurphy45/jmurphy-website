class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :job
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
