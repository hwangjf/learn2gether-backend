class CreateStudentbatches < ActiveRecord::Migration[5.2]
  def change
    create_table :studentbatches do |t|
      t.references :student, foreign_key: true
      t.references :batch, foreign_key: true

      t.timestamps
    end
  end
end
