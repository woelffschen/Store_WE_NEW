FactoryGirl.define do
  factory :article do
    User.create({"email"=>"admin@toys.de",
                 "password"=>"12345678",
                 "first_name"=>"Admin",
                 "last_name"=>"Master",
                 "street"=>"Musterstraße",
                 "number"=>"1",
                 "postel_code"=>"12345",
                 "city"=>"Münster",
                 "admin"=>"true"})

    Category.create(:name => "test category")
  end
end

