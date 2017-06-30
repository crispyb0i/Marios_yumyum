class Review < ApplicationRecord
  belongs_to :product
  validates :content_body, :presence => true
  validates :content_body, length: { minimum: 50,
  too_short: "50 characters is the minimum allowed" }
  validates :content_body, length: { maximum: 250,
  too_long: "250 characters is the maximum allowed" }
  validates :rating, :presence => true
  validates :name, :presence => true
end
