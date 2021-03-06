User.delete_all
Review.delete_all
Shop.delete_all
Drink.delete_all

20.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::StarWars.character, email: Faker::Internet.email, password: '123')
end

Shop.create(name: "BAMBU", address: "6050 Geary Blvd.", city: "San Francisco", state: "CA", zip: 94121)
Shop.create(name: "BB Tea Station", address: "1314 Noriega St.", city: "San Francisco", state: "CA", zip: 94122)
Shop.create(name: "Bottle Zup", address: "354 Clement St.", city: "San Francisco", state: "CA", zip: 94118)
Shop.create(name: "Bubble Tea & Dessert Cafe", address: "1788 32nd Ave.", city: "San Francisco", state: "CA", zip: 94122)
Shop.create(name: "Bubblecup", address: "1900 Clement St.", city: "San Francisco", state: "CA", zip: 94121)
Shop.create(name: "E Tea", address: "5344 Geary Blvd.", city: "San Francisco", state: "CA", zip: 94121)
Shop.create(name: "Eggettes", address: "3136 Noriega St.", city: "San Francisco", state: "CA", zip: 94122)
Shop.create(name: "Honey B Tea House", address: "2201 Clement St.", city: "San Francisco", state: "CA", zip: 94121)
Shop.create(name: "i-Tea", address: "2150 Irving St.", city: "San Francisco", state: "CA", zip: 94122)
Shop.create(name: "InfiniTea", address: "5351 Geary Blvd.", city: "San Francisco", state: "CA", zip: 94121)
Shop.create(name: "Little Sweet", address: "3836 Geary Blvd.", city: "San Francisco", state: "CA", zip: 94118)
Shop.create(name: "Mr & Mrs Tea House", address: "544 Clement St.", city: "San Francisco", state: "CA", zip: 94118)
Shop.create(name: "Purple Kow", address: "3620 Balboa St.", city: "San Francisco", state: "CA", zip: 94121)
Shop.create(name: "Quickly", address: "2116 Irving St.", city: "San Francisco", state: "CA", zip: 94122)
Shop.create(name: "Sharetea", address: "5336 Geary Blvd.", city: "San Francisco", state: "CA", zip: 94121)
Shop.create(name: "Sweet Hut", address: "519 Clement St.", city: "San Francisco", state: "CA", zip: 94118)
Shop.create(name: "Super Cue Cafe", address: "1139 Taraval St.", city: "San Francisco", state: "CA", zip: 94116)
Shop.create(name: "Tea Papa", address: "560 Balboa St.", city: "San Francisco", state: "CA", zip: 94118)
Shop.create(name: "Teaway", address: "2250 Irving St.", city: "San Francisco", state: "CA", zip: 94122)
Shop.create(name: "Tea FM", address: "1353 Taraval St.", city: "San Francisco", state: "CA", zip: 94116)
Shop.create(name: "The Sweet House", address: "3512 Balboa St.", city: "San Francisco", state: "CA", zip: 94121)
Shop.create(name: "TJ Cups", address: "2437 Noriega St.", city: "San Francisco", state: "CA", zip: 94122)
Shop.create(name: "Tpumps", address: "1916 Irving St.", city: "San Francisco", state: "CA", zip: 94122)
Shop.create(name: "Wonderful Dessert & Cafe", address: "2035 Irving St.", city: "San Francisco", state: "CA", zip: 94122)
Shop.create(name: "Xpresso Tea", address: "6901 Geary Blvd.", city: "San Francisco", state: "CA", zip: 94121)

#1 Bambu
Drink.create(name: "bambu special", shop_id: 1)
Drink.create(name: "awesome trio", shop_id: 1)
Drink.create(name: "smashed avocado", shop_id: 1)
Drink.create(name: "fruit addict", shop_id: 1)
Drink.create(name: "babmu favorite", shop_id: 1)
Drink.create(name: "coconut combo", shop_id: 1)
Drink.create(name: "chocolate banana smoothie", shop_id: 1)
Drink.create(name: "green apple milk tea", shop_id: 1)
Drink.create(name: "grass jelly milk tea", shop_id: 1)
Drink.create(name: "mango lychee smoothie", shop_id: 1)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (1..10).to_a.sample, shop_id: 1)
end

#2 BB Tea Station
Drink.create(name: "bubble green tea", shop_id: 2)
Drink.create(name: "peppermint milk tea", shop_id: 2)
Drink.create(name: "honeydew milk tea", shop_id: 2)
Drink.create(name: "papaya milk tea", shop_id: 2)
Drink.create(name: "raspberry milk tea", shop_id: 2)
Drink.create(name: "peach milk tea", shop_id: 2)
Drink.create(name: "taro milk tea", shop_id: 2)
Drink.create(name: "chocolate milk tea", shop_id: 2)
Drink.create(name: "pomegranate snow ice", shop_id: 2)
Drink.create(name: "iced milk with caramel and grass jelly boba", shop_id: 2)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (11..20).to_a.sample, shop_id: 2)
end

#3 Bottle Zup
Drink.create(name: "green milk tea", shop_id: 3)
Drink.create(name: "oolong milk tea", shop_id: 3)
Drink.create(name: "mojito milk tea", shop_id: 3)
Drink.create(name: "lemonade soda", shop_id: 3)
Drink.create(name: "sea salt crema coffee", shop_id: 3)
Drink.create(name: "iced milk", shop_id: 3)
Drink.create(name: "citron honey tea", shop_id: 3)
Drink.create(name: "blueberry milk", shop_id: 3)
Drink.create(name: "thai milk tea", shop_id: 3)
Drink.create(name: "matcha milk tea", shop_id: 3)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (21..30).to_a.sample, shop_id: 3)
end

#4 Bubble Tea & Dessert Cafe
Drink.create(name: "iced milk with bubble", shop_id: 4)
Drink.create(name: "iced milk with taro bubble", shop_id: 4)
Drink.create(name: "passion fruit rainbow jelly", shop_id: 4)
Drink.create(name: "green plum aloe tea", shop_id: 4)
Drink.create(name: "kumquat lemon crystal jelly tea", shop_id: 4)
Drink.create(name: "honey grapefruit aloe", shop_id: 4)
Drink.create(name: "lychee jelly tea", shop_id: 4)
Drink.create(name: "genmai cha latte", shop_id: 4)
Drink.create(name: "iced milk with red bean bubble", shop_id: 4)
Drink.create(name: "iced milk with pudding bubble", shop_id: 4)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (31..40).to_a.sample, shop_id: 4)
end

#5 Bubblecup
Drink.create(name: "green apple tea", shop_id: 5)
Drink.create(name: "green apple peach tea", shop_id: 5)
Drink.create(name: "honey tea", shop_id: 5)
Drink.create(name: "kumquat tea", shop_id: 5)
Drink.create(name: "kumquat lemon tea", shop_id: 5)
Drink.create(name: "lemon tea", shop_id: 5)
Drink.create(name: "lychee tea", shop_id: 5)
Drink.create(name: "mango tea", shop_id: 5)
Drink.create(name: "passion fruit tea", shop_id: 5)
Drink.create(name: "strawberry tea", shop_id: 5)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (41..50).to_a.sample, shop_id: 5)
end

#6 E Tea
Drink.create(name: "house milk tea", shop_id: 6)
Drink.create(name: "hokkaido milk tea", shop_id: 6)
Drink.create(name: "matcha milk tea", shop_id: 6)
Drink.create(name: "coffee milk tea", shop_id: 6)
Drink.create(name: "sa wa di ka", shop_id: 6)
Drink.create(name: "almond queen", shop_id: 6)
Drink.create(name: "fresh taro king", shop_id: 6)
Drink.create(name: "princess rose tea", shop_id: 6)
Drink.create(name: "black sesame milk tea", shop_id: 6)
Drink.create(name: "roasted oolong crema", shop_id: 6)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (51..60).to_a.sample, shop_id: 6)
end

#7 Eggettes
Drink.create(name: "honey green tea", shop_id: 7)
Drink.create(name: "orange green tea", shop_id: 7)
Drink.create(name: "milk green tea", shop_id: 7)
Drink.create(name: "sour plum green tea", shop_id: 7)
Drink.create(name: "lychee green tea", shop_id: 7)
Drink.create(name: "almond green tea", shop_id: 7)
Drink.create(name: "honeydew green tea", shop_id: 7)
Drink.create(name: "passion green tea", shop_id: 7)
Drink.create(name: "mango green tea", shop_id: 7)
Drink.create(name: "soy milk tea", shop_id: 7)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (61..70).to_a.sample, shop_id: 7)
end

#8 Honey B Tea House
Drink.create(name: "milk tea", shop_id: 8)
Drink.create(name: "matcha green milk tea", shop_id: 8)
Drink.create(name: "oolong milk tea", shop_id: 8)
Drink.create(name: "longan fresh milk tea", shop_id: 8)
Drink.create(name: "royal milk tea", shop_id: 8)
Drink.create(name: "grass her fresh milk tea", shop_id: 8)
Drink.create(name: "barley milk tea", shop_id: 8)
Drink.create(name: "caramel milk black tea", shop_id: 8)
Drink.create(name: "honey milk black tea", shop_id: 8)
Drink.create(name: "mint milk black tea", shop_id: 8)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (71..80).to_a.sample, shop_id: 8)
end

#9 i-Tea
Drink.create(name: "signature black tea", shop_id: 9)
Drink.create(name: "signature pearl milk tea", shop_id: 9)
Drink.create(name: "signature c-1 milk tea", shop_id: 9)
Drink.create(name: "jade iced lemon tea", shop_id: 9)
Drink.create(name: "yakult green tea", shop_id: 9)
Drink.create(name: "black beauty latte", shop_id: 9)
Drink.create(name: "fresh ginger milk drink", shop_id: 9)
Drink.create(name: "premium black tea", shop_id: 9)
Drink.create(name: "japanese matcha red bean", shop_id: 9)
Drink.create(name: "rose green tea", shop_id: 9)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (81..90).to_a.sample, shop_id: 9)
end

#10 InfiniTea
Drink.create(name: "classic milk tea", shop_id: 10)
Drink.create(name: "blueberry green tea", shop_id: 10)
Drink.create(name: "almond creme drink", shop_id: 10)
Drink.create(name: "hong kong style milk tea", shop_id: 10)
Drink.create(name: "classic milk green tea", shop_id: 10)
Drink.create(name: "jasmine green milk tea", shop_id: 10)
Drink.create(name: "oolong milk tea", shop_id: 10)
Drink.create(name: "earl grey milk tea", shop_id: 10)
Drink.create(name: "taro milk tea", shop_id: 10)
Drink.create(name: "malted milk tea", shop_id: 10)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (91..100).to_a.sample, shop_id: 10)
end

#11 Little Sweet
Drink.create(name: "assam black tea", shop_id: 11)
Drink.create(name: "jasmine green tea", shop_id: 11)
Drink.create(name: "high mountain tea", shop_id: 11)
Drink.create(name: "roasted tea", shop_id: 11)
Drink.create(name: "tie kuan yin tea", shop_id: 11)
Drink.create(name: "ginger tea", shop_id: 11)
Drink.create(name: "white gourd tea", shop_id: 11)
Drink.create(name: "oreo milkshake", shop_id: 11)
Drink.create(name: "avocado milkshake", shop_id: 11)
Drink.create(name: "banana milkshake", shop_id: 11)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (101..110).to_a.sample, shop_id: 11)
end

#12 Mr. & Mrs. Tea House
Drink.create(name: "classic black tea crema", shop_id: 12)
Drink.create(name: "jasmine green tea crema", shop_id: 12)
Drink.create(name: "roasted oolong tea crema", shop_id: 12)
Drink.create(name: "matcha crema", shop_id: 12)
Drink.create(name: "chocolate crema", shop_id: 12)
Drink.create(name: "mango green tea crema", shop_id: 12)
Drink.create(name: "peach black tea crema", shop_id: 12)
Drink.create(name: "peach green tea crema", shop_id: 12)
Drink.create(name: "strawberry black tea crema", shop_id: 12)
Drink.create(name: "winter melon tea crema", shop_id: 12)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (111..120).to_a.sample, shop_id: 12)
end

#13 Purple Kow
Drink.create(name: "purplekow iced black tea", shop_id: 13)
Drink.create(name: "roasted oolong iced tea", shop_id: 13)
Drink.create(name: "oolong jade iced tea", shop_id: 13)
Drink.create(name: "purplekow milk black tea", shop_id: 13)
Drink.create(name: "roasted oolong milk tea", shop_id: 13)
Drink.create(name: "honey milk tea", shop_id: 13)
Drink.create(name: "caramel milk black tea", shop_id: 13)
Drink.create(name: "hazelnut milk black tea", shop_id: 13)
Drink.create(name: "almond milk black tea", shop_id: 13)
Drink.create(name: "chocolate milk black tea", shop_id: 13)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (121..130).to_a.sample, shop_id: 13)
end

#14 Quickly
Drink.create(name: "bubble milk tea", shop_id: 14)
Drink.create(name: "jasmine milk green", shop_id: 14)
Drink.create(name: "almond milk tea", shop_id: 14)
Drink.create(name: "barley milk tea", shop_id: 14)
Drink.create(name: "blueberry milk tea", shop_id: 14)
Drink.create(name: "cantaloupe milk tea", shop_id: 14)
Drink.create(name: "chocolate milk tea", shop_id: 14)
Drink.create(name: "coconut milk tea", shop_id: 14)
Drink.create(name: "coffee milk tea", shop_id: 14)
Drink.create(name: "earl grey milk tea", shop_id: 14)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (131..140).to_a.sample, shop_id: 14)
end

#15 Sharetea
Drink.create(name: "brown rice milk tea", shop_id: 15)
Drink.create(name: "classic milk black tea", shop_id: 15)
Drink.create(name: "classic milk green tea", shop_id: 15)
Drink.create(name: "high mountain milk tea", shop_id: 15)
Drink.create(name: "oolong milk tea", shop_id: 15)
Drink.create(name: "honey black milk tea", shop_id: 15)
Drink.create(name: "honey green milk tea", shop_id: 15)
Drink.create(name: "ginger milk tea", shop_id: 15)
Drink.create(name: "okinawa pearl milk tea", shop_id: 15)
Drink.create(name: "hokkaido milk tea", shop_id: 15)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (141..150).to_a.sample, shop_id: 15)
end

#16 Super Cue Cafe
Drink.create(name: "iced milk fresh taro with egg pudding", shop_id: 16)
Drink.create(name: "iced milk fresh taro with mango pudding", shop_id: 16)
Drink.create(name: "iced milk fresh taro with taro pudding", shop_id: 16)
Drink.create(name: "iced milk red bean with egg pudding", shop_id: 16)
Drink.create(name: "iced milk red bean with taro pudding", shop_id: 16)
Drink.create(name: "iced milk red bean with mango pudding", shop_id: 16)
Drink.create(name: "iced milk caramel grass jelly", shop_id: 16)
Drink.create(name: "iced milk honey grass jelly", shop_id: 16)
Drink.create(name: "black tea with crema", shop_id: 16)
Drink.create(name: "green tea with crema", shop_id: 16)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (151..160).to_a.sample, shop_id: 16)
end

#17 Sweet Hut
Drink.create(name: "lychee tapioca milk tea", shop_id: 17)
Drink.create(name: "tapioca milk tea", shop_id: 17)
Drink.create(name: "pudding milk tea", shop_id: 17)
Drink.create(name: "chocolate pudding milk tea", shop_id: 17)
Drink.create(name: "coffee with milk tea tapioca", shop_id: 17)
Drink.create(name: "ice cream milk tea", shop_id: 17)
Drink.create(name: "lychee jelly milk tea", shop_id: 17)
Drink.create(name: "almond jelly milk tea", shop_id: 17)
Drink.create(name: "winter melon milk tea", shop_id: 17)
Drink.create(name: "tapioca green milk tea", shop_id: 17)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (161..170).to_a.sample, shop_id: 17)
end

#18 Tea FM
Drink.create(name: "house special milk tea", shop_id: 18)
Drink.create(name: "jasmine milk tea", shop_id: 18)
Drink.create(name: "peach heaven", shop_id: 18)
Drink.create(name: "caramel apple pop", shop_id: 18)
Drink.create(name: "rose garden", shop_id: 18)
Drink.create(name: "taro & taro", shop_id: 18)
Drink.create(name: "fresh thai tea", shop_id: 18)
Drink.create(name: "white dragon", shop_id: 18)
Drink.create(name: "blossom cloud", shop_id: 18)
Drink.create(name: "jaded lime", shop_id: 18)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (171..180).to_a.sample, shop_id: 18)
end

#19 Tea Papa
Drink.create(name: "teapapa milk tea", shop_id: 19)
Drink.create(name: "roasted oolong milk tea", shop_id: 19)
Drink.create(name: "honey milk black tea", shop_id: 19)
Drink.create(name: "honey milk green tea", shop_id: 19)
Drink.create(name: "caramel milk black tea", shop_id: 19)
Drink.create(name: "hazelnut milk black green tea", shop_id: 19)
Drink.create(name: "almond milk black green tea", shop_id: 19)
Drink.create(name: "chocolate milk black green tea", shop_id: 19)
Drink.create(name: "matcha milk green tea", shop_id: 19)
Drink.create(name: "honey black green roasted oolong tea", shop_id: 19)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (181..190).to_a.sample, shop_id: 19)
end

#20 Teaway
Drink.create(name: "milk tea", shop_id: 20)
Drink.create(name: "milk green tea", shop_id: 20)
Drink.create(name: "almond milk tea", shop_id: 20)
Drink.create(name: "caramel milk tea", shop_id: 20)
Drink.create(name: "cinnamon milk tea", shop_id: 20)
Drink.create(name: "chocolate milk tea", shop_id: 20)
Drink.create(name: "coconut milk tea", shop_id: 20)
Drink.create(name: "hazelnut milk tea", shop_id: 20)
Drink.create(name: "toffee milk tea", shop_id: 20)
Drink.create(name: "almond shake", shop_id: 20)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (191..200).to_a.sample, shop_id: 20)
end

#21 The Sweet House
Drink.create(name: "milk tea", shop_id: 21)
Drink.create(name: "black tea", shop_id: 21)
Drink.create(name: "milk green tea", shop_id: 21)
Drink.create(name: "green tea", shop_id: 21)
Drink.create(name: "milk thai tea", shop_id: 21)
Drink.create(name: "milk coffee tea", shop_id: 21)
Drink.create(name: "illy coffee", shop_id: 21)
Drink.create(name: "cafe mocha", shop_id: 21)
Drink.create(name: "white chocolate mocha", shop_id: 21)
Drink.create(name: "honey green tea", shop_id: 21)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (201..210).to_a.sample, shop_id: 21)
end

#22 TJ Cups
Drink.create(name: "tj signature milk tea", shop_id: 22)
Drink.create(name: "mango bits green milk tea", shop_id: 22)
Drink.create(name: "hazelnut black milk tea", shop_id: 22)
Drink.create(name: "matcha milk tea", shop_id: 22)
Drink.create(name: "premium taro milk tea", shop_id: 22)
Drink.create(name: "big red bean milk tea", shop_id: 22)
Drink.create(name: "grass jelly milk tea", shop_id: 22)
Drink.create(name: "red bean and grass jelly milk tea", shop_id: 22)
Drink.create(name: "taro and red bean milk tea", shop_id: 22)
Drink.create(name: "matcha and red bean milk tea", shop_id: 22)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (211..220).to_a.sample, shop_id: 22)
end

#23 Tpumps
Drink.create(name: "rose vanilla green milk tea", shop_id: 23)
Drink.create(name: "green apple lychee green tea", shop_id: 23)
Drink.create(name: "blackberry peach black tea", shop_id: 23)
Drink.create(name: "chocolate strawberry vanilla black milk tea", shop_id: 23)
Drink.create(name: "coocnut pineapple green milk tea", shop_id: 23)
Drink.create(name: "mango peach passion green tea", shop_id: 23)
Drink.create(name: "raspberry mango black milk tea", shop_id: 23)
Drink.create(name: "mango strawberry black tea", shop_id: 23)
Drink.create(name: "coconut salted caramel black milk tea", shop_id: 23)
Drink.create(name: "peach rose green tea", shop_id: 23)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (221..230).to_a.sample, shop_id: 23)
end

#24 Wonderful Dessert & Cafe
Drink.create(name: "tapioca milk tea", shop_id: 24)
Drink.create(name: "pudding tapioca milk tea", shop_id: 24)
Drink.create(name: "lychee tapioca milk tea", shop_id: 24)
Drink.create(name: "tapioca green milk tea", shop_id: 24)
Drink.create(name: "passion green tea tapioca", shop_id: 24)
Drink.create(name: "honey green tea tapioca", shop_id: 24)
Drink.create(name: "mint green tea tapioca", shop_id: 24)
Drink.create(name: "thai tea tapioca", shop_id: 24)
Drink.create(name: "peach tapioca", shop_id: 24)
Drink.create(name: "green apple tapioca", shop_id: 24)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (231..240).to_a.sample, shop_id: 24)
end

#25 Xpresso Tea
Drink.create(name: "almond milk tea", shop_id: 25)
Drink.create(name: "black sesame milk tea", shop_id: 25)
Drink.create(name: "black sugar milk tea", shop_id: 25)
Drink.create(name: "blueberry milk tea", shop_id: 25)
Drink.create(name: "caramel milk tea", shop_id: 25)
Drink.create(name: "chocolate milk tea", shop_id: 25)
Drink.create(name: "cinnamon milk tea", shop_id: 25)
Drink.create(name: "coconut milk tea", shop_id: 25)
Drink.create(name: "coffee milk tea", shop_id: 25)
Drink.create(name: "earl grey milk tea", shop_id: 25)

20.times do
  Review.create(rating: (1..5).to_a.sample, body: Faker::Lorem.paragraph, user_id: (1..20).to_a.sample, drink_id: (241..250).to_a.sample, shop_id: 25)
end