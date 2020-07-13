class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :surname
      t.string :name
      t.string :patrynomic
      t.references :position, null: false, foreign_key: true
      t.datetime :empl_date
      t.string :phone
      t.string :login, null: false
      t.string :password

      t.timestamps
    end
  end
end
