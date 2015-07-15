# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |f|
    firstname 'John'
    lastname 'Doe'
    email { Faker::Internet.email }
    password 'password123'
  end
end
