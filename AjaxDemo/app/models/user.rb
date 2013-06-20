# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)      not null
#  password_digest :string(255)      not null
#  session_token   :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :username, :password, :friendee_id
  attr_reader :password

  has_many(
    :authored_secrets,
    :class_name => "Secret",
    :foreign_key => "author_id"
  )
  has_many(
    :received_secrets,
    :class_name => "Secret",
    :foreign_key => "recipient_id"
  )

  has_many(
    :following_me_friendships,
    :class_name => "Friendship",
    :foreign_key => "friendee_id",
    :inverse_of => :friendee)

  has_many(
    :following_them_friendships,
    :class_name => "Friendship",
    :foreign_key => "friender_id",
    :inverse_of => :friender)

  has_many(
    :friends,
    :through => :following_them_friendships,
    :source => :friendee)

  has_many(
    :followers,
    :through => :following_me_friendships,
    :source => :friender)


  validates :username, :password_digest, :presence => true

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
end
