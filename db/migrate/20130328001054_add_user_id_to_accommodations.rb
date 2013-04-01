class AddUserIdToAccommodations < ActiveRecord::Migration
  def change
    add_column :accommodations, :user_id, :integer
    add_index :accommodations, :user_id
  end
end
