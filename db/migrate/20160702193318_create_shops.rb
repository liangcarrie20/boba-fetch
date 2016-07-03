class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name, presence: true
      t.string :address, presence: true
      t.string :city, presence: true
      t.string :state, presence: true
      t.integer :zip, presence: true

      t.timestamps(null: false)
    end
  end
end
