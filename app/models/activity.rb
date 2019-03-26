class Activity < ApplicationRecord
  enum group_type: [:count, :size]
  enum activity_type: [:module_final_project, :table_group, :fsp, :lab_group]

  has_many :groups
  belongs_to :batch
end
