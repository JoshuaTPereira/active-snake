class AddIndexToUserGames < ActiveRecord::Migration[5.2]
  def change
    add_index :user_games, [:game_id, :user_id], unique: true
  end
end
