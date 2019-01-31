# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do |index|
  dogsitter = Dogsitter.create!(
    name: Faker::RickAndMorty.character, city_id: rand(10))
end

20.times do |index|
  dog = Dog.create!(
    name: Faker::Artist.name, city_id: rand(10))
end

10.times do |index|
  city = City.create!(city_name: Faker::Pokemon.location)
end

30.times do |index|
  stroll = Stroll.create!(
    name: Faker::Pokemon.move,
    dogsitter_id: rand(20), dog_id: rand(20))
end
