Product.destroy_all
Review.destroy_all


# 2.times do |i|
#   user = User.create!(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(6)
#   )
  15.times do |i|
   product = Product.create!(
     name: Faker::Coffee.blend_name,
     description: Faker::Coffee.notes,
     price: Faker::Number.between(5, 15),
     user_id: Faker::Number.between(1,2)
     )
  #  3.times do |i|
  #    review = product.reviews.create!(
  #        content: Faker::TwinPeaks.quote,
  #        user_id: Faker::Number.between(1, 2)
  #        )
  #  end
  end
# end

p "Created #{Product.count} products"

# once initially set up/to edit must run 'rake db:setup'
# also 'rake db:test:prepare'
