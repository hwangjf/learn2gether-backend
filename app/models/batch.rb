class Batch < ApplicationRecord
  has_many :activities
  has_many :groups, through: :activities
  has_many :instructor_batches
  has_many :instructors, through: :instructor_batches
  has_many :student_batches
  has_many :students, through: :student_batches
  belongs_to :location
end
