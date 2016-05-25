class Relationship < ActiveRecord::Base
	belongs_to :follower, class_name: "Userinfo"
  	belongs_to :followed, class_name: "Userinfo"
end
