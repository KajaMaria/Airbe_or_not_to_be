require 'rails_helper'

feature "expect to see one of the properties" do
  scenario "See properties" do
    visit '/listings/index'
    expect(page).to have_content("kt6 7ls")
    expect(page).to have_content("sw11 3re")
    expect(page).to have_content("sw16 8fb")
    expect(page).to have_content("sw11 9re")
  end
end
