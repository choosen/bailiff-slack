class CreateDebts < ActiveRecord::Migration[5.0]
  def change
    create_table :debts do |t|
      t.decimal :amount, precision: 8, scale: 2, null: false
      t.references :debtor, foreign_key: { to_table: :users }, null: false
      t.references :debts, :creditor, foreign_key: { to_table: :users }, null: false

      t.timestamps
    end
  end
end
