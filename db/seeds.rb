# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying all instances of Backware"
Backware.destroy_all
puts "Creating 50 Seeds"
25.times do
  Backware.create(name: Faker::Dessert.variety, description: Faker::Cannabis.health_benefit, price: rand(1..10))
end
25.times do
  Backware.create(name: Faker::Dessert.topping, description: Faker::Cannabis.health_benefit, price: rand(1..10))
end
puts "Done"