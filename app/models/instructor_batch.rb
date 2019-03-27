class InstructorBatch < ApplicationRecord
  belongs_to :instructor
  belongs_to :batch
end
