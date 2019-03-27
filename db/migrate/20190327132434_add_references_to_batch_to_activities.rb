class AddReferencesToBatchToActivities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :batch, foreign_key: true
  end
end
