class Note < ActiveRecord::Base
  attr_accessible :description, :subject
  validates :subject, presence: true
  belongs_to :user
  validates :user_id, presence: true
end
