class AddIndexToCoordinates < ActiveRecord::Migration[5.2]
  def change
    add_index :coordinates, [:column_position, :row_position], unique: true
  end
end
