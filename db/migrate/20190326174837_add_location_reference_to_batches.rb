class AddLocationReferenceToBatches < ActiveRecord::Migration[5.2]
  def change
    add_reference :batches, :location, foreign_key: true
  end
end
