class MainArea < ApplicationRecord
  has_many :sub_areas

  def self.round_up_the_details

    self.all.map do |main_area|
        #return
    end
  end
end
