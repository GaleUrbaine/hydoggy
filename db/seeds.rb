require 'faker'

10.times do
  a = Faker::Address.city
  City.create(name: a)
end

20.times do
  a = Faker::HowIMetYourMother.character
  Dogsitter.create(name: a, city_id: rand(50))
end


20.times do
  a = Faker::Dog.name
  Dog.create(name: a, city_id: rand(50))

end

50.times do
	Stroll.create(name: Faker::Pokemon.move, dogsitter_id: rand(100), dog_id: rand(100))
end
