# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

40.times do
     User.create(
        username: Faker::Internet.user_name,
        email: Faker::Internet.email,
        password: Faker::Internet.password
      ) 
end 
shoes = [
  ["Under Armour Men's Stephen Curry Low Basketball Shoes", "109.99", "Navy / Yellow", "Under Armour", "app/assets/images/steph1.jpg"],
  ["Under Armour Men's Stephen Curry Low Basketball Shoes", "109.99", "Turquoise / Black", "Under Armour", "app/assets/images/steph1.jpg"],
  ["Jordan Men's Air Jordan 5 Retro Basketball Shoes", "189.99", "White / Green", "Air Jordan", "app/assets/images/steph1.jpg"],
  ["Nick Men's Kyrie 1 Basketball Shoes", "109.99", "Blue / Crimson / White", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Kobe X Basketball Shoes", "179.99", "University Red / Photo Blue", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Zoom HyperRev 2015 Basketball Shoes", "89.99", "Black / White/Metallic Gold", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's KD VIII Basketball Shoes", "179.99", "Navy / Red/White", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Kyrie 1 Basketball Shoes", "109.99", "Tour Yellow / Teal/Universi", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Zoom HyperRev 2015 Basketball Shoes", "89.99", "Blue / Silver", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Lebron 12 Basketball Shoes", "199.99", "White / Turquoise", "Nike", "app/assets/images/steph1.jpg"],
  ["Nick Men's Kyrie 1 Basketball Shoes", "109.99", "Berry / Hot Lava / Black", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's KD Trey 5 II Basketball Shoes", "79.99", "Grey / Green", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Zoom HyperRev 2015 Basketball Shoes", "89.99", "Black / Metallic Silver", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Zoom HyperRev 2015 Basketball Shoes", "89.99", "Midnight Navy / Tour Yellow", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's KB Mentality Basketball Shoes", "109.99", "Blue / Royal", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's KD VII Basketball Shoes", "119.99", "Grey", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Zoom LeBron Soldier VIII Basketball Shoes", "109.99", "Red / White", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Prime Hype DF Basketball Shoes", "99.99", "Black", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's LeBron 12 Low Basketball Shoes", "174.99", "Grey / Blue", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Kyrie 1 Basketball Shoes", "109.99", " Emerald / Metallic Silver", "Nike", "app/assets/images/steph1.jpg"],
  ["Nike Men's Overplay VIII Basketball Shoes", "54.99", "Black / Anthracite", "Nike", "app/assets/images/steph1.jpg"]
]

shoes.each do |array|
  Shoe.create(name: array[0], price: array[1], color: array[2], brand: array[3], image: File.new(array[4]))
end

