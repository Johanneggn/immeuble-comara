class AddDefaultToCars < ActiveRecord::Migration[5.2]
  def change
    change_column_default :cars, :rental, from: nil, to: true
    change_column_default :cars, :driver, from: nil, to: true
  end
end
