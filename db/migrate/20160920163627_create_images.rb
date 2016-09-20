class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :source
      t.integer :bproblem_id
      t.integer :user_id

      t.timestamps
    end
  end
end
