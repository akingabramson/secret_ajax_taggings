class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :friender, :null => false
      t.integer :friendee, :null => false

      t.timestamps
    end
  end
end
