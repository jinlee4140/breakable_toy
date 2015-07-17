class AddYoutubeUrlToShoes < ActiveRecord::Migration
  def change
  	add_column :shoes, :youtube_url, :string
  end
end
