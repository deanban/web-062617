
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bar.destroy_all
Bartender.destroy_all
DrinkCategory.destroy_all

bars = ["Dead Rabbit", "Blarney Stone", "Black Tail"]
bars.map { | name | Bar.create(name: name) }

bartenders = [ {name: "Meryl", drink_category_id: 2}, {name: "Alex", drink_category_id: 3} {name: "Rachel", drink_category_id: 2}, {name: "Lindsey", drink_category_id: 4}, {name: "Johann", drink_category_id: 1}]
bartenders.map { |object| Bartender.create(name: object.name, drink_category_id: object.drink_category_id)}


drink_categories = ["Highball", "Frozen", "Bubbly", "Hot"]
drink_categories.map { |name| DrinkCategory.create(name: name)}
