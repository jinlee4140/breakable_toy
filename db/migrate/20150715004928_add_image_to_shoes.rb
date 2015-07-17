class AddImageToShoes < ActiveRecord::Migration
  def self.up
    change_table :shoes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :shoes, :image
  end
end
