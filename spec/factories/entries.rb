# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    title "MyString"
    body "MyText"
    category_id 1
  end
end