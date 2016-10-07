class SubArea < ApplicationRecord
  validates_presence_of :name,
                        :description,
                        :location,
                        :main_area_id

  validates             :uniqueness => true

  belongs_to            :main_area
  has_many              :bproblems
end
