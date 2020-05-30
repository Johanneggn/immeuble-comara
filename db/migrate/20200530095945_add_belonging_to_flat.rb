class AddBelongingToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :belonging, :boolean
  end
end
