class AddFeatureToShoes < ActiveRecord::Migration
  def change
  	add_column :shoes, :feature, :string
  end
end
