require 'rails_helper'

feature 'create a listing' do
  scenario 'user can post a new listing' do
    new_listing
    expect(page). to have_content("2 bed flat in leafy area")


end

end
