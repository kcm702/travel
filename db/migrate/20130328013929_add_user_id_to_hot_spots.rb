class AddUserIdToHotSpots < ActiveRecord::Migration
  def change
    add_column :hot_spots, :user_id, :integer
    add_index :hot_spots, :user_id
  end
end
