class Accommodation < ActiveRecord::Base
  attr_accessible :additional_info, :booking_end_date, :booking_start_date, :phone, :price, :reservation_number, :title
  belongs_to :user
  validates :user_id, presence: true
end
