class AddGamesAndUsersToSnake < ActiveRecord::Migration[5.2]
  def change
    change_table :snakes do |t|
      t.belongs_to :game, null: false
      t.belongs_to :user, null: false
    end
  end
end
