# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name:"Category1")
Category.create(name:"Category2")
Category.create(name:"Category3")

Place.create(name:"place1",category_id:1)
Place.create(name:"place2",category_id:1)
Place.create(name:"place3",category_id:1)
Place.create(name:"place4",category_id:2)
Place.create(name:"place5",category_id:3)



Food.create(name:"Food1")
Food.create(name:"Food2")
Food.create(name:"Food3")


Comment.create(body:"Comment11",customer_id:1,place_id:1)
Comment.create(body:"Comment12",customer_id:1,place_id:2)
Comment.create(body:"Comment21",customer_id:2,place_id:1)
Comment.create(body:"Comment22",customer_id:2,place_id:2)
Comment.create(body:"Comment13",customer_id:1,place_id:3)
Comment.create(body:"Comment23",customer_id:2,place_id:3)

FoodPlace.create(food_id:1,place_id:2)
FoodPlace.create(food_id:1,place_id:1)
FoodPlace.create(food_id:1,place_id:3)
FoodPlace.create(food_id:3,place_id:1)
FoodPlace.create(food_id:2,place_id:1)
FoodPlace.create(food_id:2,place_id:2)

Reservation.create(numberOfPeople:11,place_id:1,customer_id:1)
Reservation.create(numberOfPeople:12,place_id:1,customer_id:2)
Reservation.create(numberOfPeople:13,place_id:1,customer_id:3)
Reservation.create(numberOfPeople:21,place_id:2,customer_id:1)
Reservation.create(numberOfPeople:22,place_id:2,customer_id:2)
Reservation.create(numberOfPeople:31,place_id:3,customer_id:1)