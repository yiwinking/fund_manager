FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@test.com"
  end

  factory :user do
    email
    nickname Faker::Name.name
    password '123456'
    password_confirmation '123456'
  end
end
