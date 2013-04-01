class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
