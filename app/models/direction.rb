class Direction < ApplicationRecord
  validates :direction, presence: true
  validates :direction, uniqueness: true
end
