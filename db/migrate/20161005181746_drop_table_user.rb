class DropTableUser < ActiveRecord::Migration[5.0]
  def change
    drop_table :user
  end
end
