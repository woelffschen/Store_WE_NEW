require 'rails_helper'

RSpec.feature 'empty cart',
              'As a user,
              I want to sign in
              so that I can empty my cart' do

  context 'at start page' do

      before(:each) do
        load Rails.root + "db/seeds.rb"

        visit root_path
        click_link 'Sign in'
        fill_in 'user_email', with: 'admin@toys.de'
        fill_in 'user_password', with: '12345678'
        click_button 'Sign in'
        expect(page).to have_content 'Hello, Admin'

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
