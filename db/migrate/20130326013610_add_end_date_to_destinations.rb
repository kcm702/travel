class AddEndDateToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :end_date, :date
  end
end
