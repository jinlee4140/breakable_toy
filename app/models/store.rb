class Store < ActiveRecord::Base

  has_many :shoe_stores
  has_many :shoes, through: :shoe_stores


  validates :store_name, presence: true
  validates :url, presence: true
end