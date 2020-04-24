class AddColumnToEquipments < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :name, :string
    add_column :equipment, :available, :boolean
    add_column :equipment, :pricing, :boolean
  end
end
