class CreateHotSpots < ActiveRecord::Migration
  def change
    create_table :hot_spots do |t|
      t.string :title
      t.boolean :category
      t.string :address
      t.string :phone
      t.string :hours
      t.string :description
      t.string :link
      t.string :other

      t.timestamps
    end
  end
end
