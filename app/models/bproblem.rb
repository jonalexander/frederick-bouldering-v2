class Bproblem < ApplicationRecord
  validates_presence_of :name, :grade

  belongs_to :user, optional: true
  belongs_to :sub_area, optional: true
  belongs_to :main_area, optional: true # has many through
  belongs_to :first_ascent, optional: true

  has_many :photos

  GRADES = %w(V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, P)
end
