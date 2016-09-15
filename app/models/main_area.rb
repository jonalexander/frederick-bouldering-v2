class MainArea < ApplicationRecord
  validates_presence_of :name

  has_many :sub_areas
  has_many :bproblems, through: :sub_areas

  def self.round_up_the_details

    self.all.map do |main_area|
        #return
    end
  end
end
