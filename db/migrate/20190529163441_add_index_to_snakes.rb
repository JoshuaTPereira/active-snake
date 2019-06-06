class AddIndexToSnakes < ActiveRecord::Migration[5.2]
  def change
    add_index :snakes, [:game_id, :user_id], unique: true
  end
end
