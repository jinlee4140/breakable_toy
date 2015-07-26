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
  ["Under Armour Men's Stephen Curry Low Basketball Shoes", "109.99", "Navy / Yellow", "Under Armour", "app/assets/images/seed1.jpg", "Stay flexible and quick on your feet in the new low-top version of the Under Armour® Curry Charged Foam basketball shoes. Thanks to the low-cut ankle design, the Curry 1 allows for a full range of motion. A Charged Foam midsole adapts with each move - soft and flexible during slow motion, but firm and responsive during fast movements. An ideal game shoe for summer games, the Curry low keeps you cool and comfortable when the action heats up.", "Signature basketball shoe featuring Charged Foam technology,Low-top design allows for enhanced range of motion and flexibility,Charged foam throughout the midsole adapts to your every move,Foam is soft and pliable when you are moving slowly,but firm during quick movements,Charged cushioning absorbs impact,converting it into energy for bounceback"],
  ["Under Armour Men's Stephen Curry Low Basketball Shoes", "109.99", "Turquoise / Black", "Under Armour", "app/assets/images/seed2.jpg", "Stay flexible and quick on your feet in the new low-top version of the Under Armour® Curry Charged Foam basketball shoes. Thanks to the low-cut ankle design, the Curry 1 allows for a full range of motion. A Charged Foam midsole adapts with each move - soft and flexible during slow motion, but firm and responsive during fast movements. An ideal game shoe for summer games, the Curry low keeps you cool and comfortable when the action heats up.", "Signature basketball shoe featuring Charged Foam technology,Low-top design allows for enhanced range of motion and flexibility,Charged foam throughout the midsole adapts to your every move,Foam is soft and pliable when you are moving slowly,but firm during quick movements,Charged cushioning absorbs impact,converting it into energy for bounceback"],
  ["Jordan Men's Air Jordan 5 Retro Basketball Shoes", "189.99", "White / Green", "Air Jordan", "app/assets/images/seed3.jpg", "Agility, Intensity, Strength, Ability to move left and right, Cusions and protections provided"],
  ["Nick Men's Kyrie 1 Basketball Shoes", "109.99", "Blue / Crimson / White", "Nike", "app/assets/images/seed4.jpg", "If you're quick on your feet like Irving, the Nike® Kyrie 1 basketball shoe is perfect for your game. Combining lightweight, zonal support with responsive cushioning, this on-court shoe is built for forward motion. Hyperfuse construction is durable yet breathable, offering the perfect design for support and stability. Lightweight foam throughout the midsole provides comfortable cushioning, while the unique outsole pattern enhances traction.", "Durable upper design that increases breathability and stability,Synthetic forefoot frame assists with quick lateral motions,Hyperfuse construction provides lockdown support,Lightweight foam midsole offers impact protection,Zoom Air unit in the heel improves responsiveness"],
  ["Nike Men's Kobe X Basketball Shoes", "179.99", "University Red / Photo Blue", "Nike", "app/assets/images/seed5.jpg", "Change the game when you step out in the Nike® Kobe X basketball shoe. Incorporating unique elements from past models, the X makes a breakthrough with new technology. Responsive Lunarlon foam with flex grooves enhances natural motion, while a visible 180-degree Zoom Air unit in the heel increases responsiveness. An updated, transparent design symbolizes Kobe's life and sophisticated game, making this the perfect shoe to respect his style.", "Textile composite upper design provides lightweight support,Internal, partial bootie construction wraps the foot and increases airflow,Solid rubber outsole increases durability for prolonged wear,Carbon fiber outrigger delivers lateral stability,Unique flex grooves promote quick cuts and pivots"],
  ["Nike Men's Zoom HyperRev 2015 Basketball Shoes", "89.99", "Black / White/Metallic Gold", "Nike", "app/assets/images/seed6.jpg", "Get equipped for championship performance with the Nike® Zoom HyperRev 2015 basketball shoe. Delivering optimal stability, this on-court shoe features a lightweight outer shell that provides zonal support and durability. A breathable inner bootie maximizes airflow while providing a close, comfortable fit. Hyperfuse construction increases lockdown support, while the thick rubber outsole features a herringbone pattern for improved traction.", "Updated lightweight outer shell for zonal support,Hyperfuse construction is lightweight and increases breathability,Nike® Zoom Units for responsive cushioning,Flywire cables work in tandem with laces to increase stability,Internal stretch bootie provides close, secure fit"],
  ["Nike Men's KD VIII Basketball Shoes", "179.99", "Navy / Red/White", "Nike", "app/assets/images/seed7.jpg", "Updated with FlyWeave technology, the all-new Nike® KD 8 basketball shoe keeps you looking fresh on the court. Thanks to the unique Flywire construction, the 8 is Kevin Durant's lightest shoe to date. The woven upper increases breathability while still providing lockdown support. A Zoom Air cushioning system throughout the midsole adds comfort, giving you full control and plush responsiveness. Up your style game with Durant's latest shoe.", "Agility, Intensity, Strength, Ability to move left and right, Cusions and protections provided", "Designed for Kevin Durant's strong defensive game, 3-Zone upper uses varying materials and constructions to improve support and durability, Breathable mesh used in the forefoot to improve flexibility for quick cuts, Midfoot strap locks your foot onto the platform for superior foot stabilization, Flywire technology pairs perfectly with the midfoot strap to improve fit and support"],
  ["Nike Men's Kyrie 1 Basketball Shoes", "109.99", "Tour Yellow / Teal/Universi", "Nike", "app/assets/images/seed8.jpg", "If you're quick on your feet like Irving, the Nike® Kyrie 1 basketball shoe is perfect for your game. Combining lightweight, zonal support with responsive cushioning, this on-court shoe is built for forward motion. Hyperfuse construction is durable yet breathable, offering the perfect design for support and stability. Lightweight foam throughout the midsole provides comfortable cushioning, while the unique outsole pattern enhances traction.", "Durable upper design that increases breathability and stability,Synthetic forefoot frame assists with quick lateral motions,Hyperfuse construction provides lockdown support,Lightweight foam midsole offers impact protection,Zoom Air unit in the heel improves responsiveness"],
  ["Nike Men's Zoom HyperRev 2015 Basketball Shoes", "89.99", "Blue / Silver", "Nike", "app/assets/images/seed9.jpg", "Get equipped for championship performance with the Nike® Zoom HyperRev 2015 basketball shoe. Delivering optimal stability, this on-court shoe features a lightweight outer shell that provides zonal support and durability. A breathable inner bootie maximizes airflow while providing a close, comfortable fit. Hyperfuse construction increases lockdown support, while the thick rubber outsole features a herringbone pattern for improved traction.", "Updated lightweight outer shell for zonal support,Hyperfuse construction is lightweight and increases breathability,Nike® Zoom Units for responsive cushioning,Flywire cables work in tandem with laces to increase stability,Internal stretch bootie provides close, secure fit"],
  ["Nike Men's Lebron 12 Basketball Shoes", "199.99", "White / Turquoise", "Nike", "app/assets/images/seed10.jpg", "Unlike anything you've ever worn before, the Nike® LeBron XII is a revolutionary game shoe. For the first time ever, the 12 features hexagonal Nike® Zoom pods that move independently for flexible cushioning and superior traction. New Megafuse technology, an evolution of the popular Hyperfuse, compartmentalizes layers to make the shoe as light and durable as possible. With LeBron's name on the tongue, you can sport The Twelve with pride.", "Agility, Intensity, Strength, Ability to move left and right, Cusions and protections provided", "Designed for Kevin Durant's strong defensive game, 3-Zone upper uses varying materials and constructions to improve support and durability, Breathable mesh used in the forefoot to improve flexibility for quick cuts, Midfoot strap locks your foot onto the platform for superior foot stabilization, Flywire technology pairs perfectly with the midfoot strap to improve fit and support"],
  ["Nick Men's Kyrie 1 Basketball Shoes", "109.99", "Berry / Hot Lava / Black", "Nike", "app/assets/images/seed11.jpg", "If you're quick on your feet like Irving, the Nike® Kyrie 1 basketball shoe is perfect for your game. Combining lightweight, zonal support with responsive cushioning, this on-court shoe is built for forward motion. Hyperfuse construction is durable yet breathable, offering the perfect design for support and stability. Lightweight foam throughout the midsole provides comfortable cushioning, while the unique outsole pattern enhances traction.", "Durable upper design that increases breathability and stability,Synthetic forefoot frame assists with quick lateral motions,Hyperfuse construction provides lockdown support,Lightweight foam midsole offers impact protection,Zoom Air unit in the heel improves responsiveness"],
  ["Nike Men's KD Trey 5 II Basketball Shoes", "79.99", "Grey / Green", "Nike", "app/assets/images/seed12.jpg", "Step up to any on-court challenge with confidence in the Nike® KD Trey 5 II basketball shoe. Giving KD the ability to play in any condition, this signature shoe was designed to withstand outdoor play. The ultra-lightweight mesh upper improves breathability, while the Nike® Zoom Unit in the forefoot allows for low-profile responsiveness. Added Flywire technology enhances stability, making the Trey 5 II the perfect choice for intense games.", "Agility, Intensity, Strength, Ability to move left and right, Cusions and protections provided", "Designed for Kevin Durant's strong defensive game, 3-Zone upper uses varying materials and constructions to improve support and durability, Breathable mesh used in the forefoot to improve flexibility for quick cuts, Midfoot strap locks your foot onto the platform for superior foot stabilization, Flywire technology pairs perfectly with the midfoot strap to improve fit and support"],
  ["Nike Men's Zoom HyperRev 2015 Basketball Shoes", "89.99", "Black / Metallic Silver", "Nike", "app/assets/images/seed13.jpg", "Get equipped for championship performance with the Nike® Zoom HyperRev 2015 basketball shoe. Delivering optimal stability, this on-court shoe features a lightweight outer shell that provides zonal support and durability. A breathable inner bootie maximizes airflow while providing a close, comfortable fit. Hyperfuse construction increases lockdown support, while the thick rubber outsole features a herringbone pattern for improved traction.", "Updated lightweight outer shell for zonal support,Hyperfuse construction is lightweight and increases breathability,Nike® Zoom Units for responsive cushioning,Flywire cables work in tandem with laces to increase stability,Internal stretch bootie provides close, secure fit"],
  ["Nike Men's Zoom HyperRev 2015 Basketball Shoes", "89.99", "Midnight Navy / Tour Yellow", "Nike", "app/assets/images/seed14.jpg", "Get equipped for championship performance with the Nike® Zoom HyperRev 2015 basketball shoe. Delivering optimal stability, this on-court shoe features a lightweight outer shell that provides zonal support and durability. A breathable inner bootie maximizes airflow while providing a close, comfortable fit. Hyperfuse construction increases lockdown support, while the thick rubber outsole features a herringbone pattern for improved traction.", "Updated lightweight outer shell for zonal support,Hyperfuse construction is lightweight and increases breathability,Nike® Zoom Units for responsive cushioning,Flywire cables work in tandem with laces to increase stability,Internal stretch bootie provides close, secure fit"],
  ["Nike Men's KB Mentality Basketball Shoes", "109.99", "Blue / Royal", "Nike", "app/assets/images/seed15.jpg", "Designed to meet the intense demands of Kobe Bryant's game, the Nike® KB Mentality basketball shoe gets you geared up for greatness. The low-top design allows for an optimizing range of ankle motion, while the drop-in Lunarlon foam midsole delivers responsive cushioning. A unique Kobe 'shealth' logo overlay is featured on the forefoot to add support. Weighing in at only 9.9 ounces, this lightweight shoe is the perfect on-court choice.", "Textile composite upper design provides lightweight support,Internal, partial bootie construction wraps the foot and increases airflow,Solid rubber outsole increases durability for prolonged wear,Carbon fiber outrigger delivers lateral stability,Unique flex grooves promote quick cuts and pivots"],
  ["Nike Men's KD VII Basketball Shoes", "119.99", "Grey", "Nike", "app/assets/images/seed16.jpg", "Updated with FlyWeave technology, the all-new Nike® KD 8 basketball shoe keeps you looking fresh on the court. Thanks to the unique Flywire construction, the 8 is Kevin Durant's lightest shoe to date. The woven upper increases breathability while still providing lockdown support. A Zoom Air cushioning system throughout the midsole adds comfort, giving you full control and plush responsiveness. Up your style game with Durant's latest shoe.", "Agility, Intensity, Strength, Ability to move left and right, Cusions and protections provided", "Designed for Kevin Durant's strong defensive game, 3-Zone upper uses varying materials and constructions to improve support and durability, Breathable mesh used in the forefoot to improve flexibility for quick cuts, Midfoot strap locks your foot onto the platform for superior foot stabilization, Flywire technology pairs perfectly with the midfoot strap to improve fit and support"],
  ["Nike Men's Zoom LeBron Soldier VIII Basketball Shoes", "109.99", "Red / White", "Nike", "app/assets/images/seed17.jpg", "Stand up to any on-court challenge with the Nike® Zoom Soldier VIII basketball shoe. Key updates include a new zipper closure under the midfoot strap, locking your foot into place to reduce slipping and improve stability. The Soldier 8 has exceptional protection and responsiveness specifically crafted for the versatile player. A decoupled forefoot and heel allow a natural foot flex, while a power-flex traction pattern grips the court below.", "Agility, Intensity, Strength, Ability to move left and right, Cusions and protections provided", "Designed for Kevin Durant's strong defensive game, 3-Zone upper uses varying materials and constructions to improve support and durability, Breathable mesh used in the forefoot to improve flexibility for quick cuts, Midfoot strap locks your foot onto the platform for superior foot stabilization, Flywire technology pairs perfectly with the midfoot strap to improve fit and support"],
  ["Nike Men's Prime Hype DF Basketball Shoes", "99.99", "Black", "Nike", "app/assets/images/seed18.jpg", "Lace up and take the court by storm in the Nike® Prime Hype DF basketball shoe. Designed for fast-paced, multi-directional movement, the Prime Hype features innovative cushioning so you can take your game to the next level. A breathe tech upper increases airflow while adding support, and the dual-density foam midsole serves as a full-length cushion. The data-informed rubber outsole enhances traction so you can bring your best game.", "Agility, Intensity, Strength, Ability to move left and right, Cusions and protections provided", "Designed for Kevin Durant's strong defensive game, 3-Zone upper uses varying materials and constructions to improve support and durability, Breathable mesh used in the forefoot to improve flexibility for quick cuts, Midfoot strap locks your foot onto the platform for superior foot stabilization, Flywire technology pairs perfectly with the midfoot strap to improve fit and support"],
  ["Nike Men's LeBron 12 Low Basketball Shoes", "174.99", "Grey / Blue", "Nike", "app/assets/images/seed19.jpg", "Unlike anything you've ever worn before, the Nike® LeBron XII is a revolutionary game shoe. For the first time ever, the 12 features hexagonal Nike® Zoom pods that move independently for flexible cushioning and superior traction. New Megafuse technology, an evolution of the popular Hyperfuse, compartmentalizes layers to make the shoe as light and durable as possible. With LeBron's name on the tongue, you can sport The Twelve with pride.", "Agility, Intensity, Strength, Ability to move left and right, Cusions and protections provided", "Designed for Kevin Durant's strong defensive game, 3-Zone upper uses varying materials and constructions to improve support and durability, Breathable mesh used in the forefoot to improve flexibility for quick cuts, Midfoot strap locks your foot onto the platform for superior foot stabilization, Flywire technology pairs perfectly with the midfoot strap to improve fit and support"],
  ["Nike Men's Kyrie 1 Basketball Shoes", "109.99", " Emerald / Metallic Silver", "Nike", "app/assets/images/seed20.jpg", "If you're quick on your feet like Irving, the Nike® Kyrie 1 basketball shoe is perfect for your game. Combining lightweight, zonal support with responsive cushioning, this on-court shoe is built for forward motion. Hyperfuse construction is durable yet breathable, offering the perfect design for support and stability. Lightweight foam throughout the midsole provides comfortable cushioning, while the unique outsole pattern enhances traction.", "Durable upper design that increases breathability and stability,Synthetic forefoot frame assists with quick lateral motions,Hyperfuse construction provides lockdown support,Lightweight foam midsole offers impact protection,Zoom Air unit in the heel improves responsiveness"],
  ["Nike Men's Overplay VIII Basketball Shoes", "54.99", "Black / Anthracite", "Nike", "app/assets/images/seed21.jpg", "Classic, sporty and stylish the Nike® Men's Overplay VII basketball shoe is perfect for casual or performance wear. Breathe tech uses bonded layers of TPU and mesh in the upper, offering a lightweight and breathable design to keep your feet comfortable. Head down to the court for a quick pick-up game as the TPU midfoot shank enhances support through the arch. Solid rubber included on the outsole for durable traction.", "Breathe Tech, bonded layers of TPU and mesh, promotes breathability and support at a light weight, ½ length mesh bootie enhances ventilation and provides a snug, Leather toecap for durability in the toe box, Full-length Phylon midsole provides lightweight cushioning from heel to toe"],
  ["Nike Men's Overplay VIII Basketball Shoes", "54.99", "Black / Anthracite", "Nike", "app/assets/images/seed22.jpg", "Classic, sporty and stylish the Nike® Men's Overplay VII basketball shoe is perfect for casual or performance wear. Breathe tech uses bonded layers of TPU and mesh in the upper, offering a lightweight and breathable design to keep your feet comfortable. Head down to the court for a quick pick-up game as the TPU midfoot shank enhances support through the arch. Solid rubber included on the outsole for durable traction.", "Breathe Tech, bonded layers of TPU and mesh, promotes breathability and support at a light weight, ½ length mesh bootie enhances ventilation and provides a snug, Leather toecap for durability in the toe box, Full-length Phylon midsole provides lightweight cushioning from heel to toe"],
  ["Nike Men's Prime Hype DF Basketball Shoes", "69.99", "Black", "Nike", "app/assets/images/seed23.jpg", "Lace up and take the court by storm in the Nike® Prime Hype DF basketball shoe. Designed for fast-paced, multi-directional movement, the Prime Hype features innovative cushioning so you can take your game to the next level. A breathe tech upper increases airflow while adding support, and the dual-density foam midsole serves as a full-length cushion. The data-informed rubber outsole enhances traction so you can bring your best game.", "Lightweight basketball shoe designed for quick turns and high speeds, Breathe tech upper construction offers lightweight support and ventilation, Protective mesh upper material is breathable and lightweight, Dual-density foam built into midsole for responsive cushioning, Phylon material throughout midsole for plush comfort"],
  ["Nike Men's KB Mentality Basketball Shoes", "99.99", "Blue / Royal", "Nike", "app/assets/images/seed24.jpg", "Designed to meet the intense demands of Kobe Bryant's game, the Nike® KB Mentality basketball shoe gets you geared up for greatness. The low-top design allows for an optimizing range of ankle motion, while the drop-in Lunarlon foam midsole delivers responsive cushioning. A unique Kobe 'shealth' logo overlay is featured on the forefoot to add support. Weighing in at only 9.9 ounces, this lightweight shoe is the perfect on-court choice.", "Textile composite upper design provides lightweight support,Internal, partial bootie construction wraps the foot and increases airflow,Solid rubber outsole increases durability for prolonged wear,Carbon fiber outrigger delivers lateral stability,Unique flex grooves promote quick cuts and pivots"],
  ["Nike Men's Zoom LeBron Soldier VIII Basketball Shoes", "119.99", "Black / Grey", "Nike", "app/assets/images/seed25.jpg", "Stand up to any on-court challenge with the Nike® Zoom Soldier VIII basketball shoe. Key updates include a new zipper closure under the midfoot strap, locking your foot into place to reduce slipping and improve stability. The Soldier 8 has exceptional protection and responsiveness specifically crafted for the versatile player. A decoupled forefoot and heel allow a natural foot flex, while a power-flex traction pattern grips the court below."],
  ["Nike Men's LeBron 12 Low Basketball Shoes", "174.99", "Grey / Blue", "Nike", "app/assets/images/seed26.jpg", "Unlike anything you've ever worn before, the Nike® LeBron XII is a revolutionary game shoe. For the first time ever, the 12 features hexagonal Nike® Zoom pods that move independently for flexible cushioning and superior traction. New Megafuse technology, an evolution of the popular Hyperfuse, compartmentalizes layers to make the shoe as light and durable as possible. With LeBron's name on the tongue, you can sport The Twelve with pride."],
  ["Nike Men's Kobe X Basketball Shoes", "179.99", "Teal / Orange", "Nike", "app/assets/images/seed27.jpg", "Change the game when you step out in the Nike® Kobe X basketball shoe. Incorporating unique elements from past models, the X makes a breakthrough with new technology. Responsive Lunarlon foam with flex grooves enhances natural motion, while a visible 180-degree Zoom Air unit in the heel increases responsiveness. An updated, transparent design symbolizes Kobe's life and sophisticated game, making this the perfect shoe to respect his style."],
  ["Nike Men's Zoom HyperRev 2015 Basketball Shoes", "89.99", "White / Black", "Nike", "app/assets/images/seed28.jpg", "Get equipped for championship performance with the Nike® Zoom HyperRev 2015 basketball shoe. Delivering optimal stability, this on-court shoe features a lightweight outer shell that provides zonal support and durability. A breathable inner bootie maximizes airflow while providing a close, comfortable fit. Hyperfuse construction increases lockdown support, while the thick rubber outsole features a herringbone pattern for improved traction."],
  ["Nike Men's Air Visi Pro V NBK Basketball Shoes", "69.99", "Black / Anthracite", "Nike", "app/assets/images/seed29.jpg", "Get the edge over your opponent when you wear the Nike® Air Visi Pro V basketball shoe. The upper features Nubuck and synthetic leather for support with a premium look, offering exceptional style and comfort. Cruise down the court while the Air units in the heel absorb impact and outriggers enhance stability. The outsole includes a modified herringbone traction pattern for durability and traction during explosive plays."],
  ["Nike Men's Zoom LeBron Soldier VIII Basketball Shoes", "109.99", "Red / Black", "Nike", "app/assets/images/seed30.jpg", "Stand up to any on-court challenge with the Nike® Zoom Soldier VIII basketball shoe. Key updates include a new zipper closure under the midfoot strap, locking your foot into place to reduce slipping and improve stability. The Soldier 8 has exceptional protection and responsiveness specifically crafted for the versatile player. A decoupled forefoot and heel allow a natural foot flex, while a power-flex traction pattern grips the court below."],
  ["Nike Men's Kobe X Basketball Shoes", "174.99", "Grey / Silver", "Nike", "app/assets/images/seed22.jpg", "Change the game when you step out in the Nike® Kobe X basketball shoe. Incorporating unique elements from past models, the X makes a breakthrough with new technology. Responsive Lunarlon foam with flex grooves enhances natural motion, while a visible 180-degree Zoom Air unit in the heel increases responsiveness. An updated, transparent design symbolizes Kobe's life and sophisticated game, making this the perfect shoe to respect his style.", "Textile composite upper design provides lightweight support,Internal, partial bootie construction wraps the foot and increases airflow,Solid rubber outsole increases durability for prolonged wear,Carbon fiber outrigger delivers lateral stability,Unique flex grooves promote quick cuts and pivots"], 
["2015 Crazylight Boost Primeknit Shoes", "130.00", "Color Vivid Red", "Adidas", "app/assets/images/adidas1.jpg", "Getting to the rim with quickness or pulling up threes, these men's basketball shoes move from end to end with untouchable speed. They have boost™ in the midsole that energizes every step and feature a seamless adidas Primeknit upper and a supportive heel.", "boost™'s energy-returning properties keep every step charged with an endless supply of light,adidas Primeknit is carefully engineered to naturally expand with your foot while you run to give you a more comfortable fit and help reduce irritation,Comfortable textile lining,Molded heel cap for added support,Grippy rubber outsole"],
["2015 Crazylight Boost Primeknit Shoes", "130.00", "Color Solar Yellow", "Adidas", "app/assets/images/adidas2.jpg", "Getting to the rim with quickness or pulling up threes, these men's basketball shoes move from end to end with untouchable speed. They have boost™ in the midsole that energizes every step and feature a seamless adidas Primeknit upper and a supportive heel.", "boost™'s energy-returning properties keep every step charged with an endless supply of light,adidas Primeknit is carefully engineered to naturally expand with your foot while you run to give you a more comfortable fit and help reduce irritation,Comfortable textile lining,Molded heel cap for added support,Grippy rubber outsole"],
["2015 Crazylight Boost Primeknit Shoes", "130.00", "Color Bright Cyan", "Adidas", "app/assets/images/adidas3.jpg", "Getting to the rim with quickness or pulling up threes, these men's basketball shoes move from end to end with untouchable speed. They have boost™ in the midsole that energizes every step and feature a seamless adidas Primeknit upper and a supportive heel.", "boost™'s energy-returning properties keep every step charged with an endless supply of light,adidas Primeknit is carefully engineered to naturally expand with your foot while you run to give you a more comfortable fit and help reduce irritation,Comfortable textile lining,Molded heel cap for added support,Grippy rubber outsole"],
["2015 Crazylight Boost Primeknit Shoes", "130.00", "Color Running White Ftw / Running White Ftw / Clear Grey", "Adidas", "app/assets/images/adidas4.jpg", "Getting to the rim with quickness or pulling up threes, these men's basketball shoes move from end to end with untouchable speed. They have boost™ in the midsole that energizes every step and feature a seamless adidas Primeknit upper and a supportive heel.", "boost™'s energy-returning properties keep every step charged with an endless supply of light,adidas Primeknit is carefully engineered to naturally expand with your foot while you run to give you a more comfortable fit and help reduce irritation,Comfortable textile lining,Molded heel cap for added support,Grippy rubber outsole"],
["2015 Crazylight Boost Primeknit Shoes", "130.00", "Color Core Black / Core Black / Clear Grey", "Adidas", "app/assets/images/adidas5.jpg", "Getting to the rim with quickness or pulling up threes, these men's basketball shoes move from end to end with untouchable speed. They have boost™ in the midsole that energizes every step and feature a seamless adidas Primeknit upper and a supportive heel.", "boost™'s energy-returning properties keep every step charged with an endless supply of light,adidas Primeknit is carefully engineered to naturally expand with your foot while you run to give you a more comfortable fit and help reduce irritation,Comfortable textile lining,Molded heel cap for added support,Grippy rubber outsole"],
["2015 Crazylight Boost Primeknit Shoes", "130.00", "Color Running White Ftw / Running White Ftw / Collegiate Royal", "Adidas", "app/assets/images/adidas6.jpg", "Getting to the rim with quickness or pulling up threes, these men's basketball shoes move from end to end with untouchable speed. They have boost™ in the midsole that energizes every step and feature a seamless adidas Primeknit upper and a supportive heel.", "boost™'s energy-returning properties keep every step charged with an endless supply of light,adidas Primeknit is carefully engineered to naturally expand with your foot while you run to give you a more comfortable fit and help reduce irritation,Comfortable textile lining,Molded heel cap for added support,Grippy rubber outsole"],
["Top Ten 2000", "125.00", "Color Power Red / Gold Metallic / Grey", "Adidas", "app/assets/images/adidas7.jpg", "adidas Top Ten 2000 , new to site, more details coming soon."],
["T-Mac1", "125.00", "Color multi", "Adidas", "app/assets/images/adidas8.jpg", "adidas TMAC 1 , new to site, more details coming soon."],
["Real deal", "125.00", "Color Scarlet / Iron Metallic / Bold Onix", "Adidas", "app/assets/images/adidas9.jpg"],
["D Lillard Shoes", "105.00", "Color Frozen Blue / Scarlet / Blue", "Adidas", "app/assets/images/adidas10.jpg", "Late-game heroics, offensive explosions and clutch plays are just a few of the tricks that Dame pulls when he's running the floor. These men's basketball shoes are his signature pair. They have a synthetic and textile upper with a lace loop for a lockdown fit, and feature ADIPRENE®+ in the forefoot for launch and SPRINTFRAME stability."],
["J Wall 1 Shoes", "115.00", "Color Collegiate Navy", "Adidas", "app/assets/images/adidas11.jpg", "A star's on the rise in the capital, and these men's mid-cut basketball shoes mark his ascension. The seamless upper, full-length ADIPRENE® midsole and stabilizing FITFRAME put the function in Wall's signature kicks.", "Seamless upper construction,Pull tab for easy on and off,Mid-cut construction for support and style,FITFRAME 3D-moulded TPU helps increase stability around the heel,Full-length ADIPRENE®+ for optimized cushioning and rebounding"],
["J Wall 1 Shoes", "115.00", "Color Core Black", "Adidas", "app/assets/images/adidas12.jpg", "A star's on the rise in the capital, and these men's mid-cut basketball shoes mark his ascension. The seamless upper, full-length ADIPRENE® midsole and stabilizing FITFRAME put the function in Wall's signature kicks.", "Seamless upper construction,Pull tab for easy on and off,Mid-cut construction for support and style,FITFRAME 3D-moulded TPU helps increase stability around the heel,Full-length ADIPRENE®+ for optimized cushioning and rebounding"],
["J Wall 1 Shoes", "115.00", "Color Light Onix / Core Black / Running White Ftw", "Adidas", "app/assets/images/adidas12.jpg", "A star's on the rise in the capital, and these men's mid-cut basketball shoes mark his ascension. The seamless upper, full-length ADIPRENE® midsole and stabilizing FITFRAME put the function in Wall's signature kicks.", "Seamless upper construction,Pull tab for easy on and off,Mid-cut construction for support and style,FITFRAME 3D-moulded TPU helps increase stability around the heel,Full-length ADIPRENE®+ for optimized cushioning and rebounding"],
["J Wall 1 Shoes", "115.00", "Color Core Black / Light Scarlet / Running White", "Adidas", "app/assets/images/adidas13.jpg", "A star's on the rise in the capital, and these men's mid-cut basketball shoes mark his ascension. The seamless upper, full-length ADIPRENE® midsole and stabilizing FITFRAME put the function in Wall's signature kicks.", "Seamless upper construction,Pull tab for easy on and off,Mid-cut construction for support and style,FITFRAME 3D-moulded TPU helps increase stability around the heel,Full-length ADIPRENE®+ for optimized cushioning and rebounding"],
["D Rose 5 Boost Shoes", "140.00", "Color Core Onix", "Adidas", "app/assets/images/adidas14.jpg", "Derrick Rose can put points on the board in the least likely situations. These men's basketball shoes are designed to assist his highflying, defense-breaking, shot-sinking style. This playoff edition comes in an athletic gray that pays tribute to the hundreds of hours D-Rose logs in his training sweats, prepping for the next season. They have boost™ in the midsole, an innovative material that returns energy to every step for quick moves.", "Synthetic leather upper for durability and light weight,Seamlessly bonded SPRINTWEB provides breathable,TORSION® SYSTEM for midfoot integrity; EVA midsole cage for enhanced stability on court,Premium D-Rose signature details,NON MARKING rubber outsole"],
["D Rose 5 Boost Shoes", "140.00", "Color Silver Metallic", "Adidas", "app/assets/images/adidas15.jpg", "Derrick Rose can put points on the board in the least likely situations. These men's basketball shoes are designed to assist his highflying, defense-breaking, shot-sinking style. This playoff edition comes in an athletic gray that pays tribute to the hundreds of hours D-Rose logs in his training sweats, prepping for the next season. They have boost™ in the midsole, an innovative material that returns energy to every step for quick moves.", "Synthetic leather upper for durability and light weight,Seamlessly bonded SPRINTWEB provides breathable,TORSION® SYSTEM for midfoot integrity; EVA midsole cage for enhanced stability on court,Premium D-Rose signature details,NON MARKING rubber outsole"],
["D Rose 5 Boost Shoes", "140.00", "Color Core Black", "Adidas", "app/assets/images/adidas16.jpg", "Derrick Rose can put points on the board in the least likely situations. These men's basketball shoes are designed to assist his highflying, defense-breaking, shot-sinking style. This playoff edition comes in an athletic gray that pays tribute to the hundreds of hours D-Rose logs in his training sweats, prepping for the next season. They have boost™ in the midsole, an innovative material that returns energy to every step for quick moves.", "Synthetic leather upper for durability and light weight,Seamlessly bonded SPRINTWEB provides breathable,TORSION® SYSTEM for midfoot integrity; EVA midsole cage for enhanced stability on court,Premium D-Rose signature details,NON MARKING rubber outsole"],
["D Rose 5 Boost Shoes", "140.00", "Color Black Red", "Adidas", "app/assets/images/adidas17.jpg", "Derrick Rose can put points on the board in the least likely situations. These men's basketball shoes are designed to assist his highflying, defense-breaking, shot-sinking style. This playoff edition comes in an athletic gray that pays tribute to the hundreds of hours D-Rose logs in his training sweats, prepping for the next season. They have boost™ in the midsole, an innovative material that returns energy to every step for quick moves.", "Synthetic leather upper for durability and light weight,Seamlessly bonded SPRINTWEB provides breathable,TORSION® SYSTEM for midfoot integrity; EVA midsole cage for enhanced stability on court,Premium D-Rose signature details,NON MARKING rubber outsole"],
["D Rose 5 Boost BMH Shoes", "140.00", "Color Cardboard", "Adidas", "app/assets/images/adidas18.jpg", "Derrick Rose can put points on the board in the least likely situations. These men's basketball shoes are designed to assist his highflying, defense-breaking, shot-sinking style. This playoff edition comes in an athletic gray that pays tribute to the hundreds of hours D-Rose logs in his training sweats, prepping for the next season. They have boost™ in the midsole, an innovative material that returns energy to every step for quick moves.", "Synthetic leather upper for durability and light weight,Seamlessly bonded SPRINTWEB provides breathable,TORSION® SYSTEM for midfoot integrity; EVA midsole cage for enhanced stability on court,Premium D-Rose signature details,NON MARKING rubber outsole"],
["Crazy 8 shoes", "110.00", "Color Base Green / Base Green / Bold Orange", "Adidas", "app/assets/images/adidas19.jpg", "The Crazy 8 has always dominated the floor, and these men's basketball shoes move inside and outside the paint with the same signature quickness. They have a durable upper and feature midfoot support and lightweight EVA cushioning.", "boost™'s energy-returning properties keep every step charged with an endless supply of light,adidas Primeknit is carefully engineered to naturally expand with your foot while you run to give you a more comfortable fit and help reduce irritation,Comfortable textile lining,Molded heel cap for added support,Grippy rubber outsole"],
["D Rose lakeshore mid shoes", "90.00", "Color Running White Ftw / Lone Blue / Running White", "Adidas", "app/assets/images/adidas20.jpg", "These mid-top men's basketball shoes mix retro design with a little South Side pride, extending D-Rose's signature style off the court. With a leather upper and lightweight cushioning over a rubber outsole patterned after a map of Chicago neighborhoods."],
["D Rose lakeshore mid shoes", "90.00", "Color Core Black / Light Scarlet / Light Red", "Adidas", "app/assets/images/adidas21.jpg", "These mid-top men's basketball shoes mix retro design with a little South Side pride, extending D-Rose's signature style off the court. With a leather upper and lightweight cushioning over a rubber outsole patterned after a map of Chicago neighborhoods."]

]

shoes.each do |array|
  Shoe.create(name: array[0], price: array[1], color: array[2], brand: array[3], image: File.new(array[4]), description: array[5], feature: array[6])
end

stores =[
 ["Foot Locker", "http://www.footlocker.com"],
  ["Amazon", "http://www.amazon.com"],
  ["Nike", "http://www.nike.com"],
  ["Adidas", "http://www.adidas.com"],
  ["Puma", "http://www.puma.com"],
  ["Cole Haan", "http://www.coldhaan.com"],
  ["Reebok", "http://www.reebok.com"],
  ["Under Armour", "http://www.underarmour.com"]
]


stores.each do |store|
  Store.create!(
    store_name: store[0],
     url: store[1]
  )
end




100.times do
  ShoeStore.create!(
    shoe: Shoe.all.sample,
    store: Store.all.sample
  )
end