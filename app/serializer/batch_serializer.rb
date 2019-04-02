class BatchSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :number, :students, :activities, :groups
  belongs_to :location
  # has_many :students, serializer: :custom_student
  # has_many :activities
end