# == Schema Information
#
# Table name: friendships
#
#  id          :integer          not null, primary key
#  friender_id :integer          not null
#  friendee_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Friendship < ActiveRecord::Base
  attr_accessible :friender_id, :friendee_id

  belongs_to :friender, :class_name => "User"
  belongs_to :friendee, :class_name => "User"

end
