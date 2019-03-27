class AddNumberToBatches < ActiveRecord::Migration[5.2]
  def change
    add_column :batches, :number, :integer
  end
end
