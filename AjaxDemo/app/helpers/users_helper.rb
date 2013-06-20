module UsersHelper
  def is_friends_with?(user)
    return nil unless current_user
    friends = current_user.friends
    p "friends are #{friends}"
    friends.include?(user)
  end
end
