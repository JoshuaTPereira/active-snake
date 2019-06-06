class Snake < ApplicationRecord
  validates :direction, presence: true
  validates :game, presence: true
  validates :user, presence: true
  validates :game, uniqueness: { scope: :user }

  belongs_to :direction
  belongs_to :game
  belongs_to :user
  has_many :snake_coordinates
  has_many :coordinates, through: :snake_coordinates
end
