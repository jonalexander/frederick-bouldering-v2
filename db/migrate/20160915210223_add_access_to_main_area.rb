class AddAccessToMainArea < ActiveRecord::Migration[5.0]
  def change
    add_column :main_areas, :access, :string
  end
end
