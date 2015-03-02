mike = User.create(name: "Mike C.", email: "mike@gmail.com", password_hash: "asdf", image_url:)
kara = User.create(name: "Kara C.", email: "kara@gmail.com", password_hash: "asdf", image_url:)

chicago = City.create(name: "Chicago")
inspi = Restaurant.create(city: chicago, name: "Inspiration Kitchen", average_rating: 5, address: "3504 W Lake St", image_url:)
shake = Restaurant.create(city: chicago, name: "Shake Shack", average_rating: 4, address: "66 E Ohio St.", image_url:)


mike.reviews.create(restaurant: shake, rating: 4, content: "Must get the Shack Stack & Cheese Fries with a Shake")
kara.reviews.create(restaurant: inspi, rating: 4, content: "My favorite restaurnt in Chicago")