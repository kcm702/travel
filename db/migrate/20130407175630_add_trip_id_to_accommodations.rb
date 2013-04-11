class AddTripIdToAccommodations < ActiveRecord::Migration
  def change
    add_column :accommodations, :trip_id, :integer
    add_index :accommodations, :trip_id
  end
end
