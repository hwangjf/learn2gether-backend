class CreateStudentgroups < ActiveRecord::Migration[5.2]
  def change
    create_table :studentgroups do |t|
      t.references :group, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
