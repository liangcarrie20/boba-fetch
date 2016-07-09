class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name, presence: true, uniqueness: true
      t.integer :shop_id

      t.timestamps(null: false)
    end
  end
end
