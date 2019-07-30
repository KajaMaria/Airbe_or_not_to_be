require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
# RSpec.describe UsersHelper, type: :helper do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

def signup
  visit('/users/new')
  fill_in 'name', with: 'Ian Aquino'
  fill_in 'username', with: 'iamanewuser'
  fill_in 'email', with: 'thisismyemail@yahoo.com'
  fill_in 'phone_number', with: 1235678901
  fill_in 'password', with: 'password123'
  click_button 'Save'
end
