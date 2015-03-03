get '/cities/:city_id/restaurants/:restaurant_id' do
  @city = City.find(params[:city_id])
  @restaurant = Restaurant.find(params[:restaurant_id])
  @reviews = @restaurant.reviews
  erb :'/restaurants/show'
end
