FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Bob#{n}" }
    school "foobar hs"
    email { "#{name}@example.com" }
    role_id "2"
    password "password"
    password_confirmation "password"
  end
 end