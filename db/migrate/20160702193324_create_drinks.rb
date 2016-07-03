class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :shop_id

      t.timestamps(null: false)
    end
  end
end
