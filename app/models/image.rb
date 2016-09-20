class Image < ApplicationRecord
  belongs_to :user
  belongs_to :bproblem

  mount_uploader :image, ImageUploader
  # ImageUploader to populate :image column on Images table
end
