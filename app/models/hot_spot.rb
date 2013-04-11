class HotSpot < ActiveRecord::Base
  attr_accessible :address, :category, :description, :hours, :link, :other, :phone, :title, :trip_id
  belongs_to :user
  belongs_to :trip
  validates :user_id, presence: true
  validates :trip_id, presence: true
end
