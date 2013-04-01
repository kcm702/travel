class RenameColumnDateToStartDate < ActiveRecord::Migration
  def change 
  		rename_column :destinations, :date, :start_date
  		remove_column :trips, :string
  end

  
end
