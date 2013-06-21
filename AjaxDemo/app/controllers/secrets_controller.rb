class SecretsController < ApplicationController
  def index
    respond_to do |format|
      format.html { render :index }
      format.json { render :json => Secret.all }
    end
  end

  def new
    @secret = Secret.new
    @users = User.all
  end

  def create
    @secret = current_user.authored_secrets.build(params[:secret])

    if @secret.save
      render :json => @secret
    else
      render :json => @secret.errors
    end


  end
end
