class Bproblem < ApplicationRecord
  validates_presence_of :name, :grade

  belongs_to :user, optional: true
  belongs_to :sub_area, optional: true
  belongs_to :main_area, optional: true # has many through
  belongs_to :first_ascent, optional: true

  has_many :photos
end
