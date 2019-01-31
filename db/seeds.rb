# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do 
	dog = Dog.create!(name: Faker::Dog.name)
end

5.times do 
	dogsitter = Dogsitter.create!(first_name: Faker::BojackHorseman.character, last_name: Faker::Lebowski.character)
end

20.times do 
	stroll = Stroll.create!(date: Faker::Date.forward(99), dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id))
end

#40.times do 
#	dogs_stroll = DogStroll.create!(dog_id: rand(Dog.first.id..Dog.last.id), dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id))
#end

20.times do |i|
	a = rand(Dog.first.id..Dog.last.id)
	b = rand(Dog.first.id..Dog.last.id)
	rand([a,b].min..[a,b].max).times do |f|
		Stroll.find(i+1).dogs << Dog.find(f+1)
		#Dog.find(f+1).strolls << Stroll.find(i+1)
		#stroll_a.save
		#dog_a.save
	end
end