class FriendshipsController < ApplicationController

  def create
    @friendship = current_user.friender_friendships.build(:friendee_id => params[:id])
    if @friendship.save
      render :json => @friendship
    else
      render :json => @friendship.errors
    end
  end
end
