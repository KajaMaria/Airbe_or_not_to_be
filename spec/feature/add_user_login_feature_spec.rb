require 'rails_helper'

feature "expect to create a new user" do
  scenario "successfully signup a new user" do
    signup
    expect(page).to have_content('iamanewuser')
  end
end
