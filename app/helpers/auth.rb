helpers do

  def current_user
    # @_current_user ||= User.find_by(id: session[:user_id])
    @_current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

<<<<<<< HEAD
  def logged_in
    # if session[:user_id]
=======
  def logged_in?
    !!session[:user_id]
>>>>>>> 879294f85f713936f3faaf23df2c7c97b49a7247
  end

end
