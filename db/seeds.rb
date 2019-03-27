# Location.destroy_all
Location.create!(name: 'Manhattan')

# Batch.destroy_all
Batch.create!(name: 'nyc-web-career-012819', number: 828, location_id: 1)

# Student.destroy_all
Student.create!(first_name: 'Ethan', last_name: 'Nam', github_username: 'ethan_nam', completed_lesson_count_for_active_track: 10)
Student.create!(first_name: 'Josh', last_name: 'Gluck', github_username: 'josh_gluck', completed_lesson_count_for_active_track: 10)
Student.create!(first_name: 'Elizabeth', last_name: 'Kosowski', github_username: 'elizabeth_kosowski', completed_lesson_count_for_active_track: 10)
Student.create!(first_name: 'Farhan', last_name: 'Mahmood', github_username: 'farhan_mahmood', completed_lesson_count_for_active_track: 10)
Student.create!(first_name: 'Nate', last_name: 'Park', github_username: 'nate_park', completed_lesson_count_for_active_track: 10)
Student.create!(first_name: 'Camille', last_name: 'Feghali', github_username: 'camille_feghali', completed_lesson_count_for_active_track: 10)
Student.create!(first_name: 'Eric', last_name: 'Hardiman', github_username: 'eric_hardiman', completed_lesson_count_for_active_track: 10)
Student.create!(first_name: 'David', last_name: 'Ren', github_username: 'david_ren', completed_lesson_count_for_active_track: 10)
Student.create!(first_name: 'Faizan', last_name: 'Iqbal', github_username: 'faizan_iqbal', completed_lesson_count_for_active_track: 10)
Student.create!(first_name: 'Dana', last_name: 'Sevcik', github_username: 'dana_sevcik', completed_lesson_count_for_active_track: 10)

# StudentBatch.destroy_all
Student.all.each do |student|
  StudentBatch.create!(student_id: student.id, batch_id: 1)
end

# Activity.destroy_all
Activity.create!(name: 'project', group_type: 0, deploy_date: Time.now, activity_type: 0, batch_id: 1)
Activity.create!(name: 'tables', group_type: 0, deploy_date: Time.now, activity_type: 1, batch_id: 1)
Activity.create!(name: 'fsp', group_type: 1, deploy_date: Time.now, activity_type: 2, batch_id: 1)
Activity.create!(name: 'labs', group_type: 1, deploy_date: Time.now, activity_type: 3, batch_id: 1)

# Instructor.destroy_all
Instructor.create!(name: 'Charlie Russo')
Instructor.create!(name: 'Jeffrey Hwang')

# InstructorBatch.destroy_all
Instructor.all.each do |instructor|

  InstructorBatch.create!(instructor_id: instructor.id, batch_id: 1)
end

# Group.destroy_all
Activity.all.each do |activity|
  5.times { Group.create!(activity_id: activity.id) }
end

# StudentGroup.destroy_all
count = 1
Group.all.each do |group|
  StudentGroup.create!(student_id: count, group_id: group.id)
  count += 1
  StudentGroup.create!(student_id: count, group_id: group.id)
  count += 1
  if count == 11
    count = 1
  end
end
