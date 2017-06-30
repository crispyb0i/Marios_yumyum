Product.destroy_all
Review.destroy_all

50.times do |index|
  new_product = Product.create!(name: Faker::Hipster.word,
                cost: rand(1..20),
                country_of_origin: Faker::Address.country,
  )
  5.times do |review|
    Review.create!(
    author: Faker::Superhero.name,
    content_body: Faker::Hipster.paragraph(2),
    rating: rand(1..5),
    product_id: new_product.id
    )
  end
end
