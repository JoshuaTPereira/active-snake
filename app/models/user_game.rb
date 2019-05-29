class UserGame < ApplicationRecord
  validates :user, presence: true
  validates :game, presence: true
  validates :user, uniqueness: { scope: :game }

  belongs_to :user
  belongs_to :game
end
