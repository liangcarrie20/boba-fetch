class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, presence: true
      t.string :body, presence: true
      t.integer :user_id, presence: true
      t.integer :drink_id, presence: true
      t.integer :shop_id, presence: true

      t.timestamps(null: false)
    end
  end
end
