class CreateInventoryItems < ActiveRecord::Migration
  def change
    create_table :inventory_items do |t|
      t.string :itemname	
      t.string :model
      t.text :description
      t.integer :unittypeid
      t.integer :qty
      t.integer	:reorder
      t.decimal :purchasecost
      t.integer :itemtypecategoryid
      t.timestamps null: false
    end
  end
end
