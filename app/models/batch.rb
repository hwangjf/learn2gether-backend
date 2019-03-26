class Batch < ApplicationRecord
  has_many :activities
  has_many :instructorbatches
  has_many :instructors, through: :instructorbatches
  has_many :studentbatches
  has_many :students, through: :studentbatches
  belongs_to :location
end
