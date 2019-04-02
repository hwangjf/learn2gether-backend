class Student < ApplicationRecord
  attr_accessor :first_name, :last_name, :github_username, :completed_lesson_count_for_active_track

  has_many :studentgroups
  has_many :groups, through: :studentgroups
  has_many :studentbatches
  has_many :batches, through: :studentbatches
end
