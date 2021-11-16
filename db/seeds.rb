# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database."
Restaurant.destroy_all
puts "Database is clean. Start seeding."


# Faker file from here: https://github.com/faker-ruby/faker
10.times do
    restaurant = Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address,
        rating: rand(1..5)
    )
    puts "Restaurant #{restaurant.id} is created."
end
puts "Done seeding."