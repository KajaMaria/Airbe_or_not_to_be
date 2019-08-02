# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'iamanewuser2', name: 'James Bond', email: 'james123bond@gmail.com', phone_number: "07400000007", password: 'bondjamesbond')
User.create(username: 'ringostarr', name: 'Ringo Starr', email: 'ringo@gmail.com', phone_number: "07400000002", password: 'thebeatles')


Listing.create(user_id: 1, title: 'Big Ben', address_city: 'London', address_post_code: 'SW1A 0AA', address_first_line: 'Big Ben' , address_second_line: 'Westminster', address_country: 'UK', description: 'Beautiful views over the city. Close to major tourist attractions. Watch Boris Johnson bumble about. Great for clock enthusiasts.',price: 400)
Listing.create(user_id: 2, title: 'camberwell pent house', address_city: 'London', address_post_code: 'SW22 1AB', address_first_line: 'Penthouse' , address_second_line: 'Camberwell Grove', address_country: 'UK', description: 'near lots of great cafes and shops. great for couple',price: 250)
Listing.create(user_id: 2, title: 'Cosy townhouse in peckham', address_city: 'London', address_post_code: 'SW5 2BC', address_first_line: 'Peckham' , address_second_line: 'Lewisham', address_country: 'UK', description: 'wonderful townshouse with original features',price: 300)
Booking.create(listing_id: 1, date: Date.new(2019,8,2), availability: true)
Booking.create(listing_id: 2, date: Date.new(2019,8,3), availability: true)
Booking.create(listing_id: 3, date: Date.new(2019,8,3), availability: true)
# Listing.create(title: 'Barbican Centre', address_city: 'London', address_post_code: 'EC2Y 8DS', address_first_line: 'Barbican Centre' , address_second_line: 'Silk Street', address_country: 'UK', description: 'Modern spacious retro-style apartments. Great for fans of brutalist architecture. Nearby art gallery and gardens.',price:200)
Request.create(user_id: 2, listing_id: 1, message: "hey this is ringo, i love your place", date: Date.new(2019,8,2))
Request.create(user_id: 1, listing_id: 2, message: "hey this is james, id like to stay", date: Date.new(2019,8,3))
# Request.create(user_id: 1, listing_id: 3, message: "helloooooo", date: Date.new(2019,8,4))
