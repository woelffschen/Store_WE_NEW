# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Article.delete_all

Article.create(:title => 'Nummer 1',
               :description =>
                   %{<p>Versuch 1</p>},
               :image_url =>   '/images/wd4d.jpg',
               :colour => 1,
               :size => 2,
               :price => 42.95)
# . . .
Article.create(:title => 'Nummer 2',
               :description =>
                   %{<p>Versuch 2</p>},
               :image_url => '/images/ruby.jpg',
               :colour => 2,
               :size => 3,
               :price => 49.50)
# . . .

Article.create(:title => 'Nummer 3',
               :description =>
                   %{<p>Versuch 3</p>},
               :image_url => '/images/rtp.jpg',
               :colour => 0,
               :size => 4,
               :price => 43.75)

User.create({"email"=>"admin@toys.de", "password"=>"12345678", "admin"=>"true", "first_name"=>"Admin"})
User.create({"email"=>"ines@toys.de", "password"=>"12345678", "admin"=>"false", "first_name"=>"Ines"})
User.create({"email"=>"sylvia@toys.de", "password"=>"12345678", "admin"=>"false", "first_name"=>"Sylvia"})
