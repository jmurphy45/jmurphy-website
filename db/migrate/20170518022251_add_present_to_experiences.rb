class AddPresentToExperiences < ActiveRecord::Migration[5.1]
  def change
    add_column :experiences, :present, :boolean
  end
end
