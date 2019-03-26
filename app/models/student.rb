class Student < ApplicationRecord
  has_many :studentgroups
  has_many :groups, through: :studentgroups
  has_many :studentbatches
  has_many :batches, through: :studentbatches
end
