class AddPriceXofToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :price_xof, :integer
  end
end
