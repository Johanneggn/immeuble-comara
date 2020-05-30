class RemoveBelongingToFlat < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :belonging, :string
  end
end
