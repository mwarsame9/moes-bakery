class Product < ApplicationRecord
  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  has_many :reviews
  belongs_to :user
end
