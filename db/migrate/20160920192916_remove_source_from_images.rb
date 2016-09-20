class RemoveSourceFromImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :source
  end
end
