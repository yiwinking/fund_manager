# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense do
    date "2012-08-17"
    amount "9.99"
    comment "MyString"
    category_id 1
  end
end
