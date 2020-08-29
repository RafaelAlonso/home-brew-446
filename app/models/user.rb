class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :beers, through: :orders
  has_many :sold_beers, class_name: "Beer"

  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
end
