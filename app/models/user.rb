class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles
  has_many :games
  # has_one_attached :photo //on a une erreur sur ce code ca bloque la creation des controllers et des commandes TL//

  validates :email, uniqueness: true
  validates :email, presence: true
end
