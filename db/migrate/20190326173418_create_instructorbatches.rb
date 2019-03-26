class CreateInstructorbatches < ActiveRecord::Migration[5.2]
  def change
    create_table :instructorbatches do |t|
      t.references :instructor, foreign_key: true
      t.references :batch, foreign_key: true

      t.timestamps
    end
  end
end
