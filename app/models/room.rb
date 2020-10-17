class Room < ApplicationRecord
  has_many :room_users
  has_many :user, through: :room_users

  validates :name, presence: true
end
