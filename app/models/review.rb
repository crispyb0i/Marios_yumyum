class Review < ApplicationRecord
  belongs_to :product
  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :content_body, length: { minimum: 50,
  too_short: "50 characters is the minimum allowed" }
  validates :content_body, length: { maximum: 250,
  too_long: "250 characters is the maximum allowed" }
  validates :rating, :presence => true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than: 0 }
  validates :rating, numericality: { less_than: 6 }
end
