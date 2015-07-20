class AddDescriptionToShoes < ActiveRecord::Migration
  def change
  	add_column :shoes, :description, :string
  end
end
