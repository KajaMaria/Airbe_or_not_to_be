require 'rails_helper'

def new_listing

  visit '/listings/new'
  fill_in 'address(first line)', :with => '123 London Road'
  fill_in 'address(second line)', :with => 'Camberwell'
  fill_in 'post code', :with => 'SE1 234'
  fill_in 'city', :with => 'London'
  fill_in 'country', :with => 'UK'
  fill_in 'title', :with => '2 bed flat in leafy area'
  fill_in 'description', :with => 'cosy 2 bed loft apartment, great for couples. Close to shops and cafes.'
  fill_in 'price', :with => "100"
  click_button('Create Listing')

end
