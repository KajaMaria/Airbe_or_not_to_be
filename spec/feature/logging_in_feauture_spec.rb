require 'rails_helper'

feature 'wrong log in' do
  scenario 'user inputs incorrect email' do
    visit '/login'
    login
    expect(page).to have_content "Invalid Username or Password"
  end

end

feature 'successful login' do
  scenario ' takes user to listings index page' do
    signup
    login
    expect(page).to have_current_path(listings_index_path)

  end
end
