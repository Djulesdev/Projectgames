class Game < ApplicationRecord
  belongs_to :user
  has_many :articles
  has_many :users, through: :articles
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :average_rating, presence: true
end
