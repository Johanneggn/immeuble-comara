class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :description
      t.integer :price_per_day
      t.float :longitude
      t.float :latitude
      t.string :address
      t.string :capacity

      t.timestamps
    end
  end
end
