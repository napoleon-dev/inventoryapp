class CreateItemTypeCategories < ActiveRecord::Migration
  def change
    create_table :item_type_categories do |t|
      t.string :itemtypecategory

      t.timestamps null: false
    end
  end
end
