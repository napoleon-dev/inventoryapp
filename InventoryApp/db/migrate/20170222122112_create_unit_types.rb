class CreateUnitTypes < ActiveRecord::Migration
  def change
    create_table :unit_types do |t|
     t.string :unittype
      t.timestamps null: false
    end
  end
end
