class Bproblem < ApplicationRecord
  validates_presence_of         :name,
                                :grade,
                                :description,
                                :location
                                :sub_area_id

  validates                     :uniqueness => true

  mount_uploaders               :photos, PhotoUploader
  serialize                     :photos, Array

  belongs_to                    :user
  belongs_to                    :sub_area
  belongs_to                    :main_area # has many through
  belongs_to                    :first_ascent, optional: true

  GRADES = %w(V1 V2 V3 V4 V5 V6 V7 V8 V9 V10 V11 V12 V13 P)
end
