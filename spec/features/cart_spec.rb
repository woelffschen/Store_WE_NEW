require 'rails_helper'

RSpec.feature 'add to cart',
              'As a user,
              I want to sign in
              so that I can add articles to cart' do

  context 'at start page' do

      before(:each) do
        load Rails.root + "db/seeds.rb"
        visit root_path
        click_link 'Sign in'
        fill_in 'user_email', with: 'admin@toys.de'
        fill_in 'user_password', with: '12345678'
        click_button 'Sign in'
        expect(page).to have_content 'Hello, Admin'

    end

    scenario 'add article to cart' do
      visit articles_path
      first(:button, 'Add to cart').click
      expect(page).to have_content "shopping cart"
    end

  end
end


