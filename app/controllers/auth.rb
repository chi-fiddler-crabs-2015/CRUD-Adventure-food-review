get '/login' do
  erb:'users/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])

  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = "login failed, try again."
    erb :'users/login'
  end
end

get '/logout' do
  session.delete :user_id
  redirect '/'
end
