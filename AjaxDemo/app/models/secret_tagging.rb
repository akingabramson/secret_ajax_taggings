# == Schema Information
#
# Table name: secret_taggings
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  secret_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SecretTagging < ActiveRecord::Base
  attr_accessible :secret_id, :tag_id

  belongs_to :secret
  belongs_to :tag
end
