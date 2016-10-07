class AddLocationToBproblems < ActiveRecord::Migration[5.0]
  def change
    add_column :bproblems, :location, :text
  end
end
