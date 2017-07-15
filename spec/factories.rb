FactoryGirl.define do
  factory :user do
    email'mwarsame@gmail.com'
    password '123456'
    admin true
  end
end

FactoryGirl.define do
  factory :product do
    name 'Decaf'
    description 'Fresh Decaf Coffee'
    price "5"
  end
end
