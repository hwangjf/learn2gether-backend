class CreateInstructorBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :instructor_batches do |t|
      t.references :instructor, foreign_key: true
      t.references :batch, foreign_key: true

      t.timestamps
    end
  end
end
