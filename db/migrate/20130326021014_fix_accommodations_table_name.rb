class FixAccommodationsTableName < ActiveRecord::Migration
  def change
  	rename_column :destinations, :description, :location
  	rename_table :accomodations, :accommodations
  end

 
end
