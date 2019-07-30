require 'rails_helper'

feature "expect to see one of the properties" do
  scenario "See properties" do
    Listing.create(address: 'sw11 3re', description: 'Born to be wild', price: 3000)
    Listing.create(address: 'kt6 7ls', description: 'Born to be wild', price: 3000)
    Listing.create(address: 'sw16 8fb', description: 'Born to be wild', price: 3000)
    Listing.create(address: 'sw11 9re', description: 'Born to be wild', price: 3000)
    visit '/listings/index'
    sleep(0.5)
    expect(page).to have_content("kt6 7ls")
    expect(page).to have_content("sw11 3re")
    expect(page).to have_content("sw16 8fb")
    expect(page).to have_content("sw11 9re")
  end
end
