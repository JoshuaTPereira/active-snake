class UserGame < ApplicationRecord
  validates :user_id, presence: true
  validates :game_id, presence: true
  validates :user_id, uniqueness: { scope: :game_id }
end
