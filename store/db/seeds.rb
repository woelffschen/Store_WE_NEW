# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Articles
Article.delete_all

Article.create(:title => 'Ball',
               :description =>
                   %{small dogs},
               :category => 'Katze',
               :image_url =>   'http://katzenzubehor.tk/Spielzeug%20fur%20hunde1.jpg',
               :colour => 1,
               :size => 2,
               :price => 5.50,
              :active => true)
# . . .
Article.create(:title => 'Frisbee',
               :description =>
                   %{big dogs},
               :category => 'Hund',
               :image_url => 'http://hahasforhoohas.com/wp-content/uploads/frisbee.jpg',
               :colour => 2,
               :size => 3,
               :price => 3.95,
               :active => true)
# . . .
Article.create(:title => 'Bone',
               :description =>
                   %{feed},
               :category => 'großer Hund',
               :image_url => 'https://www.schecker.de/$WS/schecker/websale8_shop-schecker/produkte/medien/bilder/gross/059204_1548.jpg',
               :colour => 0,
               :size => 4,
               :price => 1.50, :active => true)


# User
User.create({"email"=>"admin@toys.de",
             "password"=>"12345678",
             "admin"=>"true",
             "first_name"=>"Admin",
              "last_name"=>"Master",
              "street"=>"Musterstraße",
              "number"=>"1",
              "postel_code"=>"12345",
              "city"=>"Münster"})

User.create({"email"=>"ines@toys.de",
             "password"=>"12345678",
             "admin"=>"false",
             "first_name"=>"Ines",
             "last_name"=>"Master",
             "street"=>"Musterstraße",
             "number"=>"2",
             "postel_code"=>"12345",
             "city"=>"Münster"})


User.create({"email"=>"sylvia@toys.de",
             "password"=>"12345678",
             "admin"=>"false",
             "first_name"=>"Sylvia",
             "last_name"=>"Master",
             "street"=>"Musterstraße",
             "number"=>"3",
             "postel_code"=>"12345",
             "city"=>"Münster"})
