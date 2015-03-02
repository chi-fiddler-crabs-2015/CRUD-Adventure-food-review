get '/' do
  @cities = City.all
  erb:'index'
end
