require 'rails_helper'

feature 'create a listing' do
  visit '/listings/new'
  fill_form 'address_first_line', :with => '123 London Road'
  fill_form 'address_second_line', :with => 'Camberwell'
  fill_form 'address_post_code', :with => 'SE1 234'
  fill_form 'address_city', :with => 'London'
  fill_form 'address_country', :with => 'UK'
  fill_form 'title', :with => '2 bed flat in leafy area'
  fill_form 'description', :with => 'cosy 2 bed loft apartment, great for couples. Close to shops and cafes.'
  fill_form 'price', :with => 100
  click_button('Post!')

  expect(page). to have_content("Congratulations, youve created a listing")
  click_button('view listings')
  expect(page). to have_content("2 bed flat in leafy area")


end
