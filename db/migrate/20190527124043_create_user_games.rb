class CreateUserGames < ActiveRecord::Migration[5.2]
  def change
    create_table :user_games do |t|
      t.belongs_to :user, null: false
      t.belongs_to :game, null: false
    end
  end
end
