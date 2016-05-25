module SessionsHelper


  def current_user
  		Userinfo.find_by(email: session[:user_id])
  end

end
