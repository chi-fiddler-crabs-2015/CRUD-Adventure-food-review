# get '/cities' do
#   @cities = Cities.all
#   erb :'cities/index'
# end

get '/cities/:city_id' do
  @city = City.find(params[:city_id])
  erb:'cities/show'
end
