class Snake < ApplicationRecord
  validates :direction_id, presence: true
  validates :game_id, presence: true
  validates :user_id, presence: true
  validates :game_id, uniqueness: { scope: :user_id }
end
