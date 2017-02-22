class CreateCustomerTypes < ActiveRecord::Migration
  def change
    create_table :customer_types do |t|
     t.string :customertype
      t.timestamps null: false
    end
  end
end
