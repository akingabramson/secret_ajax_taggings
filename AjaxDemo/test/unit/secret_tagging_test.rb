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

require 'test_helper'

class SecretTaggingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
