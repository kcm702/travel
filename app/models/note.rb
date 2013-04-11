class Note < ActiveRecord::Base
  attr_accessible :description, :subject, :trip_id
  validates :subject, presence: true
  belongs_to :user
  belongs_to :trip
  validates :user_id, presence: true
  validates :trip_id, presence: true
end
