class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories
  before_save { self.name = name.capitalize }
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: { case_sensitive: false }
  validates_uniqueness_of :name
end
