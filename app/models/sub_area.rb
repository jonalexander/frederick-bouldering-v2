class SubArea < ApplicationRecord
  validates_presence_of :name

  belongs_to :main_area, optional: true
  has_many :bproblems
end
