class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customerid
      t.text :shippingaddress
      t.decimal :discount, :precision => 5, :scale => 2, :default => 0.00
      t.decimal :tax, :precision => 5, :scale => 2, :default => 0.00
      t.date :deliverydate
      t.date :orderdate
      t.timestamps null: false
    end
  end
end
