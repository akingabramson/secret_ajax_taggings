class FriendshipsController < ApplicationController

  def create
    @friendship = current_user.following_them_friendships.build(:friendee_id => params[:id])
    if @friendship.save
      render :json => @friendship
    else
      render :json => @friendship.errors
    end
  end

  def destroy
    @friendship = current_user.following_them_friendships.where(:friendee_id => params[:id]).first
    if @friendship.destroy
      render :json => @friendship
    else
      render :json => @friendship.errors
    end
  end
end
