class AddOfferToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :offer, :string
  end
end
