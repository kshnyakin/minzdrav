class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :name, null: false
      t.text :comment

      t.timestamps
    end
  end
end
