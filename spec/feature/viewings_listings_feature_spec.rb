require 'rails_helper'

feature "expect to see one of the properties" do
  before "creates some fake listings" do
    @listing1 = Listing.create(title: 'Big Ben', address_city: 'London', address_post_code: 'SW1A 0AA', address_first_line: 'Big Ben' , address_second_line: 'Westminster', address_country: 'UK', description: 'Beautiful views over the city. Close to major tourist attractions. Watch Boris Johnson bumble about. Great for clock enthusiasts.',price:400)
    @listing2 = Listing.create(title: 'Barbican Centre', address_city: 'London', address_post_code: 'EC2Y 8DS', address_first_line: 'Barbican Centre' , address_second_line: 'Silk Street', address_country: 'UK', description: 'Modern spacious retro-style apartments. Great for fans of brutalist architecture. Nearby art gallery and gardens.',price:200)
    visit '/listings/index'
  end

  scenario "See properties" do
    expect(page).to have_content(@listing1.title)
    expect(page).to have_content(@listing2.title)
  end

  scenario "can click through to see individual property listing" do
    click_link(@listing1.title)
    sleep(2)
    expect(page).to have_content(@listing1.address_first_line)
    expect(page).to have_content(@listing1.address_second_line)
    expect(page).to have_content(@listing1.description)
    expect(page).to have_content(@listing1.price)
  end
end
