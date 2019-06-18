class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :billingaddress, foreign_key: false
      t.references :shippingaddress, foreign_key: false

      t.timestamps
    end
    add_foreign_key :billingaddress, :address, column: :billingaddress_id
    add_foreign_key :shippingaddress, :address, column: :shippingaddress_id

  end
end
