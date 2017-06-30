class Product < ApplicationRecord
  has_many :reviews

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  scope :most_reviewed_products, -> {(
    select("products.id, products.name, products.cost, products.country_of_origin,count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(3)
  )}

  scope :local, -> {
   where("country_of_origin like ?", "USA")
 }

  validates :name, :cost, :country_of_origin, :presence => true
end
