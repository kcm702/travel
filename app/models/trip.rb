class Trip < ActiveRecord::Base
  attr_accessible :description, :start_date, :end_date
  belongs_to :user
  has_many :accommodations
  has_many :hot_spots
  has_many :notes
  validates :user_id, presence: true
 
end
