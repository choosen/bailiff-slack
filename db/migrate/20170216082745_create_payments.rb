class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.decimal :amount, precision: 8, scale: 2, null: false
      t.references :debtor, :creditor, foreign_key: { to_table: :users }, null: false

      t.timestamps
    end
  end
end
