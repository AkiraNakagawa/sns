class Like < ActiveRecord::Base
	belongs_to :user, class_name: "Userinfo"
	belongs_to :post, class_name: "Post"
end
