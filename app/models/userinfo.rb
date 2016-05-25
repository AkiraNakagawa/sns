class Userinfo < ActiveRecord::Base
	has_many :posts
	has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :likes,  class_name: "Like",
                    foreign_key: "user_id"

# Follows a user.
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end

  def like_post(post)

    # need a check to make sure the like doesn't already exists

    likes.create(post_id: post.id)
  end

end
