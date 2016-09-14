class CreateBproblems < ActiveRecord::Migration[5.0]
  def change
    create_table :bproblems do |t|
      t.string :name
      t.string :grade
      t.integer :sub_area_id
      t.integer :user_id
      t.integer :first_ascent__id

      t.timestamps
    end
  end
end
