class ShoeStore < ActiveRecord::Base

  belongs_to :store
  belongs_to :shoe


 validates :store_id, presence: true
 validates :shoe_id, presence: true
 validates :url, presence: true


end
