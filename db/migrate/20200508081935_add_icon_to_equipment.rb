class AddIconToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :icon, :string
  end
end
