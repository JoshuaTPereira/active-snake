class SnakeCoordinate < ApplicationRecord
  validates :snake, presence: true
  validates :coordinate, presence: true

  belongs_to :coordinate
  belongs_to :snake
end
