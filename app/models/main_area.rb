class MainArea < ApplicationRecord
  validates_presence_of :name,
                        :description,
                        :location
                        
  has_many :sub_areas
  has_many :bproblems, through: :sub_areas

end
