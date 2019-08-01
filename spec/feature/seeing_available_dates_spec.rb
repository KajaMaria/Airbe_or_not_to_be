require 'rails_helper'

feature "expect to see available dates" do
  before "create listing" do
    signup
    login
    new_listing
  end

  scenario "Click on link to see dates" do
    click_link('2 bed flat in leafy area')
    expect(page).to have_content("2019-08-03")
    expect(page).to have_content("2019-08-05")
    expect(page).to have_content("2019-08-06")
    end
end
