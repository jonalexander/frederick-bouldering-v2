class User < ApplicationRecord
  has_many :bproblems
  has_many :photos
end
