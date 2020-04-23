class RemoveUserIdFromFlat < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :user_id, :bigint
  end
end
