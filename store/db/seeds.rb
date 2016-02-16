# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Articles
Article.delete_all

Article.create(:title => 'Nummer 1',
               :description =>
                   %{<p>Versuch 1</p>},
               :image_url =>   '/images/wd4d.jpg',
               :colour => 1,
               :size => 2,
               :price => 42.95,
              :active => true)
# . . .
Article.create(:title => 'Nummer 2',
               :description =>
                   %{<p>Versuch 2</p>},
               :image_url => '/images/ruby.jpg',
               :colour => 2,
               :size => 3,
               :price => 49.50, :active => true)
# . . .

Article.create(:title => 'Nummer 3',
               :description =>
                   %{<p>Versuch 3</p>},
               :image_url => '/images/rtp.jpg',
               :colour => 0,
               :size => 4,
               :price => 43.75, :active => true)

# OrderStatus
OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"


# User
User.create({"email"=>"admin@toys.de", "password"=>"12345678", "admin"=>"true", "first_name"=>"Admin"})
User.create({"email"=>"ines@toys.de", "password"=>"12345678", "admin"=>"false", "first_name"=>"Ines"})
User.create({"email"=>"sylvia@toys.de", "password"=>"12345678", "admin"=>"false", "first_name"=>"Sylvia"})
