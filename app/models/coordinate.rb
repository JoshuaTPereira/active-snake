class Coordinate < ApplicationRecord
  validates :column_position, presence: true
  validates :row_position, presence: true
  validates :column_position, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :row_position, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :column_position, uniqueness: { scope: :row_position }

  has_many :snake_coordinates
  has_many :snakes, through: :snake_coordinates
end
