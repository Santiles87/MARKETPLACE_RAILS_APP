class Offer < ApplicationRecord
  has_one_attached :image
  validates :image, :location, :product_name, :price, presence: true
  validates :description, presence: true, length: { in: 10..200}
end
