class CreateShoeStores < ActiveRecord::Migration
  def change
    create_table :shoe_stores do |t|
    	t.integer :shoe_id, presence: true
    	t.integer :store_id, presence: true
    	t.string :url, presence: true
    	
    	t.timestamps null: false
    end
  end
end
