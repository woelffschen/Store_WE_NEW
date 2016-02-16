require 'rails_helper'

RSpec.feature 'Sign up',
              'As a "user",
              I want to sign up
              so that I can manage my own account' do
  context 'at start page' do
    scenario 'sign up' do
      visit root_path

      click_link 'Sign up'
      fill_in 'user_email', with: 'martin@ruetter.de'
      fill_in 'user_first_name', with: 'Martin'
      fill_in 'user_last_name', with: 'Ruetter'
      fill_in 'user_street', with: 'Musterstraße'
      fill_in 'user_number', with: '1'
      fill_in 'user_postel_code', with: '12345'
      fill_in 'user_city', with: 'Muster'
      fill_in 'user_password', with: '12345678'
      fill_in 'user_password_confirmation', with: '12345678'

      expect { click_button 'Sign up' }.to change { User.count }.by(1)
      expect(page).to have_content 'Hello, Martin'
    end
  end
end


