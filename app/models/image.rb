class Image < ApplicationRecord
  mount_uploader :source, ImageUploader
  # utilize ImageUploader to populate :source column on Images table

  belongs_to :user, optional: true
  belongs_to :bproblem, optional: true
end
