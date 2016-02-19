FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    first_name 'Girl'
    last_name 'Boy'
    street 'Reeperbahn'
    number '6'
    postel_code '12345'
    city 'Hamburg'
    password '12345678'
    password_confirmation '12345678'
    
  end

end
