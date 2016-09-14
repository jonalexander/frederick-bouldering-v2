class FixColumnOnBproblems < ActiveRecord::Migration[5.0]
  def change
    rename_column :bproblems, :first_ascent__id, :first_ascent_id
  end
end
