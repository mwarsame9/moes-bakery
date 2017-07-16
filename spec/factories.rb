FactoryGirl.define do

  factory(:user) do
    email('user@gmail.com')
    password('123456')
    password_confirmation('123456')
    admin(false)
  end

  factory(:admin, class: User) do
    name('admin')
    email('admin@gmail.com')
    password('123456')
    password_confirmation('123456')
    admin(true)
  end

  factory(:product) do
    name('Decaf')
    description('Decaf Coffee Tasty')
    price(5)
  end

  factory(:review) do
    content('I like this coffee')
    association :user_id, factory: :user
    association :product_id, factory: :product
  end

end
