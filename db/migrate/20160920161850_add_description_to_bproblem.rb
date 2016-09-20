class AddDescriptionToBproblem < ActiveRecord::Migration[5.0]
  def change
    add_column :bproblems, :description, :text
  end
end
