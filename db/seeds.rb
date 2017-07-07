Product.destroy_all
Review.destroy_all


2.times do |i|
  user = User.create!(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(6),
    admin: false
  )
  5.times do |i|
   product = user.products.create!(
     name: Faker::Dessert.variety,
     description: Faker::Dessert.flavor,
     price: Faker::Number.between(5, 15)
     user_id: Faker::Number.between(1, 2)
     )
   3.times do |i|
     review = product.reviews.create!(
         content: Faker::TwinPeaks.quote,
         user_id: Faker::Number.between(1, 2)
         )
   end
  end
end

p "Created #{Product.count} products"

# once initially set up/to edit must run 'rake db:setup'
# also 'rake db:test:prepare'
