class AddBelongingToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :belonging, :string
  end
end
