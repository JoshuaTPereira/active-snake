class Direction < ApplicationRecord
  validates :direction, presence: true
  validates :direction, uniqueness: true

  has_many :snakes
end
