class Bproblem < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :sub_area, optional: true
  belongs_to :first_ascent, optional: true

  has_many :photos
end
