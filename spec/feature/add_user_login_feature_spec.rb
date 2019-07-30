require 'rails_helper'

feature "expect to create a new user" do
  scenario "successfully signup a new user" do
    signup
    expect(page).to have_content('iamanewuser')
  end
end

feature "expect to reject non-email entries in email field" do
  scenario "bad email address" do
    visit('/users/new')
    fill_in 'name', with: 'Ian Aquino'
    fill_in 'username', with: 'iamanewuser'
    fill_in 'email', with: 'thisismyemailyahoocom'
    fill_in 'user[phone_number]', with: '07923489392'
    fill_in 'password', with: 'password123'
    click_button 'Create User'
    expect(page).not_to have_content('iamanewuser')
  end
end
