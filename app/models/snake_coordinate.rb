class SnakeCoordinate < ApplicationRecord
  validates :snake_id, presence: true
  validates :coordinate_id, presence: true
end
