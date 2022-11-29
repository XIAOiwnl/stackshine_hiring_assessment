class CreateVendorTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :vendor_transactions do |t|
      t.references :workspace_vendor, null: false, foreign_key: true
      t.string :description
      t.integer :amount_in_cents
      t.datetime :transaction_date

      t.timestamps
    end
  end
end
