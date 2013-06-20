class RenameFriendShipColumns < ActiveRecord::Migration
  def change
    rename_column :friendships, :friender, :friender_id
    rename_column :friendships, :friendee, :friendee_id

  end
end
