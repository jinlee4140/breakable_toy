class Shoe < ActiveRecord::Base

  belongs_to :user
  has_many :reviews

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  

  validates :name, presence: true
  validates :price, presence: true
  validates :color, presence: true
  validates :brand, presence: true


  def self.search(search)
    where("name ILIKE :search", search: "%#{search}%")
  end


end