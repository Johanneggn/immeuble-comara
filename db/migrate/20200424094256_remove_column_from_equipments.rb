class RemoveColumnFromEquipments < ActiveRecord::Migration[5.2]
  def change
    remove_column :equipment, :kitchen
    remove_column :equipment, :air_conditioner
    remove_column :equipment, :hangers
    remove_column :equipment, :washing_machine
    remove_column :equipment, :television
    remove_column :equipment, :private_entrance
    remove_column :equipment, :sheets
    remove_column :equipment, :work_space
    remove_column :equipment, :fridge
    remove_column :equipment, :dishes
    remove_column :equipment, :utensil
    remove_column :equipment, :cooker
    remove_column :equipment, :balcony
    remove_column :equipment, :backyard
    remove_column :equipment, :carbon_monoxide_detector
    remove_column :equipment, :hot_water
    remove_column :equipment, :parking
    remove_column :equipment, :long_stay
    remove_column :equipment, :tumble_dryer
    remove_column :equipment, :wi_fi
    remove_column :equipment, :store
    remove_column :equipment, :luggage
  end
end
