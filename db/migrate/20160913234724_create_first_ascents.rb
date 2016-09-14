class CreateFirstAscents < ActiveRecord::Migration[5.0]
  def change
    create_table :first_ascents do |t|
      t.string :name

      t.timestamps
    end
  end
end
