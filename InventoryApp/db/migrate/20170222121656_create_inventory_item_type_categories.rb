class CreateInventoryItemTypeCategories < ActiveRecord::Migration
  def change
    create_table :inventory_item_type_categories do |t|
      t.string :ItemTypeCategory
      t.timestamps null: false
    end
  end
end

