class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :avatar
  #validates :category_id, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :body, presence: true




end
