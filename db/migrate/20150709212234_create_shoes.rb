class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.belongs_to :user, index: true
      t.string :name, null: false
      t.integer :price, null: false
      t.string :color, null: false
      t.string :brand, null: false
      t.string :signatureshoe

      t.timestamps null: false
    end
  end
end
