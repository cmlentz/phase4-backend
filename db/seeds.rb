# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
Shop.destroy_all

shop1= Shop.create(name: "#{Faker::Name.first_name} Pets", city: "#{Faker::Address.city}", state: "#{Faker::Address.state}")
shop2= Shop.create(name: "#{Faker::Name.first_name} Pets", city: "#{Faker::Address.city}", state: "#{Faker::Address.state}")
shop3= Shop.create(name: "#{Faker::Name.first_name} Pets", city: "#{Faker::Address.city}", state: "#{Faker::Address.state}")
shop4= Shop.create(name: "#{Faker::Name.first_name} Pets", city: "#{Faker::Address.city}", state: "#{Faker::Address.state}")
shop5= Shop.create(name: "#{Faker::Name.first_name} Pets", city: "#{Faker::Address.city}", state: "#{Faker::Address.state}")

puts 'Shops seeded...'


Animal.destroy_all

animal1 = Animal.create(species: "#{Faker::Creature::Animal}")
animal2 = Animal.create(species: "#{Faker::Creature::Animal}")
animal3 = Animal.create(species: "#{Faker::Creature::Animal}")
animal4 = Animal.create(species: "#{Faker::Creature::Animal}")
animal5 = Animal.create(species: "#{Faker::Creature::Animal}")
animal6 = Animal.create(species: "#{Faker::Creature::Animal}")
animal7 = Animal.create(species: "#{Faker::Creature::Animal}")
animal8 = Animal.create(species: "#{Faker::Creature::Animal}")
animal9 = Animal.create(species: "#{Faker::Creature::Animal}")

puts 'Animals seeded...'

Sale.destroy_all

Sale.create(shop_id: shop1.id, animal_id: animal1.id, priority: 1)
Sale.create(shop_id: shop1.id, animal_id: animal2.id, priority: 2)
Sale.create(shop_id: shop2.id, animal_id: animal1.id, priority: 3)
Sale.create(shop_id: shop2.id, animal_id: animal3.id, priority: 4)
Sale.create(shop_id: shop3.id, animal_id: animal4.id, priority: 5)
Sale.create(shop_id: shop3.id, animal_id: animal5.id, priority: 6)
Sale.create(shop_id: shop4.id, animal_id: animal6.id, priority: 7)
Sale.create(shop_id: shop4.id, animal_id: animal7.id, priority: 8)
Sale.create(shop_id: shop5.id, animal_id: animal8.id, priority: 9)
Sale.create(shop_id: shop5.id, animal_id: animal9.id, priority: 10)

puts "Sales seeded..."


puts "Seeding Complete!!!"