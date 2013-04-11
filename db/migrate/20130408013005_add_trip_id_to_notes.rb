class AddTripIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :trip_id, :integer
    add_index :notes, :trip_id
  end
end
