class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :group_type
      t.datetime :deploy_date
      t.integer :activity_type

      t.timestamps
    end
  end
end
