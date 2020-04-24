class RenameCapacityToFlat < ActiveRecord::Migration[5.2]
  def change
    rename_column :flats, :capacity, :max_capacity
  end
end
