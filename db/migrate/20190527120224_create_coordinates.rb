class CreateCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :coordinates do |t|
      t.integer :column_position, null: false
      t.integer :row_position, null: false

      t.timestamps
    end
  end
end
