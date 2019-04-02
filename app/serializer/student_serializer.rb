class StudentSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :first_name, :last_name, :github_username, :completed_lesson_count_for_active_track
end