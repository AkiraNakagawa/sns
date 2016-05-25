class RelationshipsController < ApplicationController
	#before_action :logged_in_user
	skip_before_filter :verify_authenticity_token  

  def create
    user = Userinfo.find(params[:followed_id])
    current_user.follow(user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def current_user
  		Userinfo.find_by(email: session[:user_id])
  end


end
