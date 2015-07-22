class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name, presence: true
      t.string :product_name, presence: true
      t.integer :retail_price, presence: true
      t.string :url, presence: true

      t.timestamps null: false
    end
  end
end
