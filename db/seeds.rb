mike = User.create(name: "Mike C.", email: "mike@gmail.com", password: "asdf", image_url:"https://secure.gravatar.com/avatar/d16b0abb4231a24e237e1de57217fbc5.png?r=PG&d=mm&s=150")
kara = User.create(name: "Kara C.", email: "kara@gmail.com", password: "asdf", image_url:"https://secure.gravatar.com/avatar/123129ae3e7b2698e8cbc0f6c2d6f137.png?r=PG&d=mm&s=150")

10.times do
  User.create(name:Faker::Name.name, email: Faker::Internet.email, password:"1111", image_url: Faker::Avatar.image)
end

chicago = City.create(name: "Chicago")
inspi = Restaurant.create(city: chicago, name: "Inspiration Kitchen", cuisine:"southern", average_rating: 5, address: "3504 W Lake St", image_url: "http://gaby.fachrul.com/img/kitchendesignwawan/kitchen-inspiration/chicago-tuesday-inspiration-kitchen-wheeler-kearns800-x-537-426-kb-jpeg-x.jpg")
shake = Restaurant.create(city: chicago, name: "Shake Shack", cuisine:"american", average_rating: 4, address: "66 E Ohio St.", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/Uh6WjyATBEPoAJFZpvaljQ/o.jpg")


mike.reviews.create(restaurant: shake, rating: 4, title:"YUM!", content: "Must get the Shack Stack & Cheese Fries with a Shake")
kara.reviews.create(restaurant: inspi, rating: 4, title:"BEST PLACE EVAR!", content: "My favorite restaurnt in Chicago, you have to get the shrimp & grits!")

mike.connections.create(friend: kara)
kara.connections.create(friend: User.last)
