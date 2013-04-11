class Accommodation < ActiveRecord::Base
  attr_accessible :additional_info, :booking_end_date, :booking_start_date, :phone, :price, :reservation_number, :title, :trip_id
  belongs_to :user
  belongs_to :trip
  validates :user_id, presence: true
  validates :trip_id, presence: true
end
