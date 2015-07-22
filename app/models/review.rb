class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :shoe


  validates :user_id, presence: true
  validates :shoe_id, presence: true
  validates :comment, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than: 11 },
    allow_nil: true


  def self.search(search)
    where("name ILIKE :search", search: "%#{search}%")
  end

end