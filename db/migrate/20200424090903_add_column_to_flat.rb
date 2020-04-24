class AddColumnToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :min_capacity, :integer
  end
end
