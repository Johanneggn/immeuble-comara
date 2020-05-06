class AddDefaultToEquipmentFields < ActiveRecord::Migration[5.2]
  def change
    change_column_default :equipment, :available, from: nil, to: false
    change_column_default :equipment, :pricing, from: nil, to: false
  end
end
