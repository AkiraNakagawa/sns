class UserinfosController < ApplicationController
  before_action :set_userinfo, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [ :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token  

 # show list of all users
  # GET /userinfos
  # GET /userinfos.json
  def index
    @userinfos = Userinfo.all
  end

# show detail about one user
  # GET /userinfos/1
  # GET /userinfos/1.json
  def show
     user = Userinfo.find(params[:id])

     @posts = user.posts
  end

# show form for adding new user
  # GET /userinfos/new
  def new
    @userinfo = Userinfo.new
    print "called new!"
  end

# show a form to edit a user
  # GET /userinfos/1/edit
  def edit
  #    @userinfos = Userinfo.find(params[:id])

  end

# create the user
  # POST /userinfos
  # POST /userinfos.json
  def create
    @userinfo = Userinfo.new(userinfo_params)
    print "called create"
    respond_to do |format|
      if @userinfo.save
        format.html { redirect_to @userinfo, notice: 'Userinfo was successfully created.' }
        format.json { render :show, status: :created, location: @userinfo }
      else
        format.html { render :new }
        format.json { render json: @userinfo.errors, status: :unprocessable_entity }
      end
    end
  end

# edit the user
  # PATCH/PUT /userinfos/1
  # PATCH/PUT /userinfos/1.json
  def update
    respond_to do |format|
      if @userinfo.update(userinfo_params)
        format.html { redirect_to @userinfo, notice: 'Userinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @userinfo }
      else
        format.html { render :edit }
        format.json { render json: @userinfo.errors, status: :unprocessable_entity }
      end
    end
  end


def test1
end

def test2
end


#delete user
  # DELETE /userinfos/1
  # DELETE /userinfos/1.json
  def destroy
    @userinfo.destroy
    respond_to do |format|
      format.html { redirect_to userinfos_url, notice: 'Userinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

 # follow a user
  # GET /userinfos/1/edit
  def follow

  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

   def correct_user
      @user = Userinfo.find(params[:id])
      redirect_to(root_url)  unless session[:user_id] == @user.email
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userinfo
      @userinfo = Userinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userinfo_params
      params.permit(:firstname, :lastname, :school, :email, :password)
    end
end
