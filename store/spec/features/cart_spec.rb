require 'rails_helper'

RSpec.feature 'Sign in',
              'As a registered "user",
              I want to sign in
              so that I can manage my own account' do
  context 'at start page' do

    context 'at new article' do
      before(:each) do
        User.create({"email"=>"admin@toys.de",
                     "password"=>"12345678",
                     "first_name"=>"Admin",
                     "last_name"=>"Master",
                     "street"=>"Musterstraße",
                     "number"=>"1",
                     "postel_code"=>"12345",
                     "city"=>"Münster",
                     "admin"=>"true"})

        visit root_path
        click_link 'Sign in'
        fill_in 'user_email', with: 'admin@toys.de'
        fill_in 'user_password', with: '12345678'
        click_button 'Sign in'
        expect(page).to have_content 'Hello, Admin'

        visit new_article_path
        fill_in 'article_title', with: 'Testobjekt'
        fill_in 'article_description', with: 'erfolgreich'
        fill_in 'article_image_url', with: 'bild.jpg'
        fill_in 'article_price', with: '2.50'
        click_button 'Create Article'
        expect(page).to have_content 'Testobjekt'
    end

    scenario 'add article to cart' do
      visit articles_path
      click_on 'Add to cart'
      expect(page).to have_content "Shopping Cart"
    end

  end
  end
end


