class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :filepath
      
      t.timestamps
    end
  end
end