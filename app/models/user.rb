class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :shoes
  has_many :reviews
  # has_many :review_ranks

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "75x75>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end

