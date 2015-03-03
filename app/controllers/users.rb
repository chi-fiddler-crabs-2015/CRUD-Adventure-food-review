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

get 'users/:user_id' do

  if @user == current_user

  else
    redirect
  end
end

#=========================== for later use
# get '/users/edit' do

# end

# put '/users' do

# end

# delete '/users' do

# end
