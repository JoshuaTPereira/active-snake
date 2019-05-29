class AddIndexToDirections < ActiveRecord::Migration[5.2]
  def change
    add_index :directions, [:direction], unique: true
  end
end
