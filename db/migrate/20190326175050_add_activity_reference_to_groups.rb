class AddActivityReferenceToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :activity, foreign_key: true
  end
end
