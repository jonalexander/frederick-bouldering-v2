class CreateSubAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_areas do |t|
      t.string :name
      t.text :description
      t.integer :main_area_id

      t.timestamps
    end
  end
end
