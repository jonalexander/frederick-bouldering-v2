class AddPhotosToBproblems < ActiveRecord::Migration[5.0]
  def change
    add_column :bproblems, :photos, :json
  end
end
