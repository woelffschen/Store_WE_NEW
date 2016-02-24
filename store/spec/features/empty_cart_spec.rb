require 'rails_helper'

RSpec.feature 'Sign in',
              'As a registered "user",
              I want to sign in
              so that I can manage my own account' do
  context 'at start page' do

    context 'at new article' do
      before(:each) do
        load Rails.root + "db/seeds.rb"

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

        visit articles_path
        first(:button, 'Add to cart').click
        expect(page).to have_content "shopping cart"
      end

      scenario 'empty shopping cart' do
        visit cart_path
        click_on 'Empty Cart'
        expect(page).to have_content "€0.00"
      end
    end
  end
end
