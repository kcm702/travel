class HotSpot < ActiveRecord::Base
  attr_accessible :address, :category, :description, :hours, :link, :other, :phone, :title
  belongs_to :user
  validates :user_id, presence: true
end
