helpers do

  def current_user
    # @_current_user ||= User.find_by(id: session[:user_id])
    @_current_user || User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in
    if session[:user_id]
  end

end
