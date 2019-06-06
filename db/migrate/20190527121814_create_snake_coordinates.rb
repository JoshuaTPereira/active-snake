class CreateSnakeCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :snake_coordinates do |t|
      t.belongs_to :snake, null: false
      t.belongs_to :coordinate, null: false
      t.boolean :head, null: false, default: false

      t.timestamps
    end
  end
end
