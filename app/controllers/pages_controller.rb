class PagesController < ApplicationController
  def home

     #@posts = Post.all
     #if the user is logged on
     if current_user
       @posts = current_user.feed()
     end
  end

  def login
  end

  def signup
  end

  def post
  end

  def view
  end

  def find
  end

  def current_user
      Userinfo.find_by(email: session[:user_id])
  end

end
