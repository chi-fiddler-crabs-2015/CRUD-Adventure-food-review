mike = User.create!(name: "Mike C.", email: "mike@gmail.com", password: "asdf", image_url:"https://secure.gravatar.com/avatar/d16b0abb4231a24e237e1de57217fbc5.png?r=PG&d=mm&s=150")
kara = User.create!(name: "Kara C.", email: "kara@gmail.com", password: "asdf", image_url:"https://secure.gravatar.com/avatar/123129ae3e7b2698e8cbc0f6c2d6f137.png?r=PG&d=mm&s=150")

10.times do
  User.create!(name:Faker::Name.name, email: Faker::Internet.email, password:"1111", image_url: Faker::Avatar.image)
end

usa = ["Albuquerque", "Boston", "NYC", "Los Angeles"]

usa.each do |city|
  City.create!(name: city)
end

chicago = City.create!(name: "Chicago")
inspi = Restaurant.create!(city: chicago, name: "Inspiration Kitchen", cuisine:"southern", average_rating: 5, address: "3504 W Lake St", image_url: "http://gaby.fachrul.com/img/kitchendesignwawan/kitchen-inspiration/chicago-tuesday-inspiration-kitchen-wheeler-kearns800-x-537-426-kb-jpeg-x.jpg")
shake = Restaurant.create!(city: chicago, name: "Shake Shack", cuisine:"american", average_rating: 4, address: "66 E Ohio St.", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/Uh6WjyATBEPoAJFZpvaljQ/o.jpg")
goat  = Restaurant.create!(city: chicago, name: "Girl and the Goat", cuisine: "american", average_rating: 4.5, address: "809 W Randolph St", image_url: "https://willvphotography.files.wordpress.com/2011/05/girlandgoat-i.jpg")
bars  = Restaurant.create!(city: chicago, name: "Handlebar", cuisine: "vegetarian", average_rating: 4, address: "2311 W North Ave.", image_url: "http://brewpublic.com/wp-content/uploads/2009/05/chicago-at-night-1-040.jpg")
purple= Restaurant.create!(city: chicago, name: "The Purple Pig", cuisine: "mediterranean", average_rating: 4, address: "500 N Michigan Ave", image_url: "http://media-cdn.tripadvisor.com/media/photo-s/03/ba/c0/03/the-purple-pig.jpg")

restaurants = [inspi, shake, goat, bars, purple]


mike.reviews.create!(restaurant: shake, rating: 4, title:"YUM!", content: "Must get the Shack Stack & Cheese Fries with a Shake")
kara.reviews.create!(restaurant: inspi, rating: 4, title:"BEST PLACE EVAR!", content: "My favorite restaurnt in Chicago, you have to get the shrimp & grits!")

User.all.each do |user|
  Review.create!(restaurant: Restaurant.all.sample, rating:rand(1..5), title:["Awesome Food", "DONT EAT HERE!" ,"MEH, it was okay", "Will be coming back soon"].sample, content:Faker::Lorem.paragraph )
end

mike.connections.create!(friend: kara)
kara.connections.create!(friend: User.last)
