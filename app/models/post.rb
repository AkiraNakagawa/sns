class Post < ActiveRecord::Base
  belongs_to :userinfo
  has_many :likes,  class_name: "Like",
                    foreign_key: "post_id"


  def like(user)

    # need a check to make sure the like doesn't already exists
    if ! likes.exists?(:user_id => user.id)
    	likes.create(:user_id => user.id)
 	end
  end


  def unlike(user)

  	likes.find_by(user_id: user.id).destroy

  end


end
