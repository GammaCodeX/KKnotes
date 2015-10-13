module SessionsHelper


  #Logs in the given user
  def log_in(user)
    session[:user_id] = user.id
  end

  #Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  #Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  #Returns true iff an account is logged it
  def logged_in?
    !current_user.nil?
  end

  #Returns true iff the admin user (UID 2) is logged in. 
  #If your admin user is not user 2 change the code below
  def admin?
    current_user && (current_user.id == 2)
  end

  def force_login
    unless logged_in?
      redirect_to root_path
    end
  end

  def force_admin
    unless admin?
      redirect_to root_path
    end
  end


end
