Product.destroy_all
Review.destroy_all


1.times do |i|
  user = User.create!(
    email: 'mohamed@gmail.com',
    password: 'mohamed',
    admin: true
  )
  15.times do |i|
   product = Product.create!(
     name: Faker::Coffee.blend_name,
     description: Faker::Coffee.notes,
     price: Faker::Number.between(5, 15),
     user_id: 1
     )
   3.times do |i|
     review = product.reviews.create!(
         content: Faker::TwinPeaks.quote,
         user_id: 1
         )
   end
  end
end

p "Created #{User.count} users"
p "Created #{Product.count} products"
