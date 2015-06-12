class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :city
      t.string :address
      t.string :phone
      t.decimal :product_price, precision: 8, scale: 2
      t.decimal :delivery_price, precision: 8, scale: 2
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
