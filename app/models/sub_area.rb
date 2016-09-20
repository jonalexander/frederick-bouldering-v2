class SubArea < ApplicationRecord
  validates_presence_of :name, :main_area_id

  belongs_to :main_area, optional: true
  has_many :bproblems
end
