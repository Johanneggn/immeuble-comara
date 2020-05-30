class AddDefaultToBelonging < ActiveRecord::Migration[5.2]
  def change
    change_column_default :flats, :belonging, from: nil, to: true
  end
end
