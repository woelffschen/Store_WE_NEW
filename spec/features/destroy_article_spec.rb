require 'rails_helper'

RSpec.feature 'destroy article',
              'As a Admin,
              I want to sign in
              so that I can destroy articles' do
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

    scenario 'edit article' do
      visit articles_path
      first(:link, 'Destroy').click
      expect(page).to have_content 'destroyed'
    end

  end
end

