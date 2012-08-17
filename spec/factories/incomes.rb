# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :income do
    date "2012-08-17"
    amount ""
    comment "MyString"
    category_id 1
  end
end
