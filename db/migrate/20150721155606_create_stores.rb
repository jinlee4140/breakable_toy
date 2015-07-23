class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name, null: false
      t.string :product_name
      t.integer :retail_price
      t.string :url, null: false

      t.timestamps null: false
    end
  end
end
