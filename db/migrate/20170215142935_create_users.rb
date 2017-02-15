class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :slack_number, null: false

      t.timestamps
    end
    add_index :users, :slack_number, :unique => true
  end
end
