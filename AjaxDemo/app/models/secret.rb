# == Schema Information
#
# Table name: secrets
#
#  id           :integer          not null, primary key
#  title        :string(255)      not null
#  author_id    :integer          not null
#  recipient_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Secret < ActiveRecord::Base
  attr_accessible :title, :author_id, :recipient_id

  belongs_to :author, :class_name => "User"
  belongs_to :recipient, :class_name => "User"

  validates :title, :author, :recipient, :presence => true
end
