mike = User.create(name: "Mike C.", email: "mike@gmail.com", password: "asdf", image_url:)
kara = User.create(name: "Kara C.", email: "kara@gmail.com", password: "asdf", image_url:)

10.times do
  User.create(name:Faker::Name.name, email: Faker::Internet.email, password:"1111", image_url: Faker::Avatar.image)
end

chicago = City.create(name: "Chicago")
inspi = Restaurant.create(city: chicago, name: "Inspiration Kitchen", average_rating: 5, address: "3504 W Lake St", image_url:)
shake = Restaurant.create(city: chicago, name: "Shake Shack", average_rating: 4, address: "66 E Ohio St.", image_url:)


mike.reviews.create(restaurant: shake, rating: 4, title:"YUM!", content: "Must get the Shack Stack & Cheese Fries with a Shake")
kara.reviews.create(restaurant: inspi, rating: 4, title:"BEST PLACE EVAR!", content: "My favorite restaurnt in Chicago, you have to get the shrimp & grits!")

mike.connections.create(friend: kara)
kara.connections.create(friend: User.last)
