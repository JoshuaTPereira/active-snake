class CreateSnakes < ActiveRecord::Migration[5.2]
  def change
    create_table :snakes do |t|
      t.belongs_to :direction, null: false
    end
  end
end
