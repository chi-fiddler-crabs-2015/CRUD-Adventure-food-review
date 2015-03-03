get '/users' do
  @users = Users.all
  erb :'users/index'
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.create(params[:user])

  if @user.valid?
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors
    erb :'users/new'
  end

end

get '/users/:user_id' do
  @user = User.find(params[:user_id])
  @latest = @user.reviews.last
  @reviews = @user.reviews
  erb :'users/show'
end

#=========================== for later use
# get '/users/edit' do

# end

# put '/users' do

# end

# delete '/users' do

# end
