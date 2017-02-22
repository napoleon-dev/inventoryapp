class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customername
      t.string :customeraddress
      t.string 	:phonenumber
      t.string :email	
      t.timestamps null: false
    end
  end
end
