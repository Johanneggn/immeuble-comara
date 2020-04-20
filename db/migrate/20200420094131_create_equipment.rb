class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.boolean :kitchen
      t.boolean :air_conditioner
      t.boolean :hangers
      t.boolean :washing_machine
      t.boolean :television
      t.boolean :private_entrance
      t.boolean :sheets
      t.boolean :work_space
      t.boolean :fridge
      t.boolean :dishes
      t.boolean :utensil
      t.boolean :cooker
      t.boolean :balcony
      t.boolean :backyard
      t.boolean :carbon_monoxide_detector
      t.boolean :hot_water
      t.boolean :parking
      t.boolean :long_stay
      t.boolean :tumble_dryer
      t.boolean :wi_fi
      t.boolean :store
      t.boolean :luggage
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
