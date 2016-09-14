class SubArea < ApplicationRecord
  belongs_to :main_area, optional: true
  has_many :bproblems
end
