class AddTripIdToHotSpots < ActiveRecord::Migration
  def change
    add_column :hot_spots, :trip_id, :integer
    add_index :hot_spots, :trip_id
  end
end
