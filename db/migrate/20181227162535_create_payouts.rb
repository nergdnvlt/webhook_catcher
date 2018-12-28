class CreatePayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :payouts do |t|
      t.string :order_id
      t.string :reference
      t.string :account
      t.string :subscriptions
      t.float :tax
      t.float :tax_percentage
      t.float :fastspring_fee
      t.string :payee
      t.float :subtotal

      t.timestamps
    end
  end
end
