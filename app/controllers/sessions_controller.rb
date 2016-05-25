class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  def new
  end

  def create
  	user = Userinfo.find_by(email: params[:email].downcase)
    if user && user.password == params[:pwd]
      print "Success!!!!"
      session[:user_id] = user.email
      redirect_to "/"
  	else
  	  render "new"
    end
  end

  def logout
    session.delete(:user_id)
    @current_user = nil

  end

end
