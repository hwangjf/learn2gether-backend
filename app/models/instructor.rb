class Instructor < ApplicationRecord
  has_many :instructorbatches
  has_many :batches, through: :instructorbatches
end
