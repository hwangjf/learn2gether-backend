class Activity < ApplicationRecord
  enum group_type: [:number_of_groups, :groups_of_students]
  enum activity_type: [:module_final_project, :table_group, :fsp, :lab_group]

  has_many :groups
  belongs_to :batch
end
