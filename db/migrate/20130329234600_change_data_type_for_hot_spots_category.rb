class ChangeDataTypeForHotSpotsCategory < ActiveRecord::Migration
  def up
  	change_column :hot_spots, :category, :string
  end

  def down
  end
end
