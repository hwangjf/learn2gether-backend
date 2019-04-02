class StudentBatch < ApplicationRecord
  belongs_to :student
  belongs_to :batch
end
