class AddLocationToMainAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :main_areas, :location, :text
  end
end
