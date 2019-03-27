class CreateStudentBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :student_batches do |t|
      t.references :student, foreign_key: true
      t.references :batch, foreign_key: true

      t.timestamps
    end
  end
end
