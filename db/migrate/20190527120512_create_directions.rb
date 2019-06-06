class CreateDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :directions do |t|
      t.string :direction, null: false

      t.timestamps
    end
  end
end
