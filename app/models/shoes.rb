class Shoes < ActiveRecord::Base

  validates :name, presence: true
  validates :price, presence: true
  validates :color, presence: true
  validates :brand, presence: true


  def self.search(search)
    where("name ILIKE :search", search: "%#{search}%")
  end

end