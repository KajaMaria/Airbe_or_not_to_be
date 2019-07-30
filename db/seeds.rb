# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Listing.create(title: 'Big Ben', address_city: 'London', address_post_code: 'SW1A 0AA', address_first_line: 'Big Ben' , address_second_line: 'Westminster', address_country: 'UK', description: 'Beautiful views over the city. Close to major tourist attractions. Watch Boris Johnson bumble about. Great for clock enthusiasts.',price:400)
Listing.create(title: 'Barbican Centre', address_city: 'London', address_post_code: 'EC2Y 8DS', address_first_line: 'Barbican Centre' , address_second_line: 'Silk Street', address_country: 'UK', description: 'Modern spacious retro-style apartments. Great for fans of brutalist architecture. Nearby art gallery and gardens.',price:200)
User.create(username: 'iamanewuser', name: 'James Bond', email: 'jamesbond@gmail.com', phone_number: 07400000007, password: 'bondjamesbond')

