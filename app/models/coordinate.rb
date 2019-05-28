class Coordinate < ApplicationRecord
  validates :column_position, presence: true
  validates :row_position, presence: true
  validates :column_position, uniqueness: { scope: :row_position }
end
