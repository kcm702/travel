class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|
      t.string :title
      t.string :reservation_number
      t.date :booking_start_date
      t.date :booking_end_date
      t.string :phone
      t.string :price
      t.string :additional_info

      t.timestamps
    end
  end
end
