class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :github_username
      t.integer :completed_lesson_count_for_active_track

      t.timestamps
    end
  end
end
