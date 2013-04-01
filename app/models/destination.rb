class Destination < ActiveRecord::Base
  attr_accessible :start_date, :location, :end_date
  belongs_to :user
  validates :user_id, presence: true
  validates :location, presence: true
end
