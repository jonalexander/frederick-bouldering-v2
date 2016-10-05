class AddLocationToSubAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :sub_areas, :location, :text
  end
end
