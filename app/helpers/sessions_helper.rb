module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    # @current_user = @current_user || User.find_by(id: session[:user_id])
    # both line 8 and 10 are same just the notation is different
    @current_user ||= User.find_by(id: session[:user_id])
  end

  #Returns true if the user  is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end
end
