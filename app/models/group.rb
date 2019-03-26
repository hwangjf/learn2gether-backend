class Group < ApplicationRecord
  has_many :studentgroups
  has_many :students, through: :studentgroups
  belongs_to :activity
end
