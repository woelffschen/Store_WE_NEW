require 'rails_helper'

RSpec.feature 'New Article',
              'Sign up as a Admin,
              I want to sign up
              so that I can create the articles' do

  context 'at new article' do

      before(:each) do
        load Rails.root + "db/seeds.rb"
        visit root_path
        click_link 'Sign in'
        fill_in 'user_email', with: 'admin@toys.de'
        fill_in 'user_password', with: '12345678'
        click_button 'Sign in'
        expect(page).to have_content 'Hello, Admin'
      end

      scenario 'generate article' do
        visit new_article_path
        fill_in 'article_title', with: 'Testobjekt'
        fill_in 'article_description', with: 'erfolgreich'
        fill_in 'article_image_url', with: 'bild.jpg'
        fill_in 'article_price', with: '2.50'
        click_button 'Save Article'
        expect(page).to have_content 'Testobjekt'
      end

  end
end

