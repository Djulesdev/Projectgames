class Article < ApplicationRecord
  belongs_to :user
  belongs_to :game
  CATEGORIES = ['News', 'Patchnotes', 'Reviews']
  validates :title, presence: true, uniqueness: true
  validates :categories, presence: true
  validates :categories, inclusion: {in: CATEGORIES}
  validates :content, length: {minimum: 500}
end
