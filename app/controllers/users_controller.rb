class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only:[:show, :destroy]
  def index

    if params[:name]
      @users = User.where(["name LIKE ?", "%#{params[:name]}%"]).page params[:page] if params[:name]
    else
      @users = User.all.order(name: :ASC).page params[:page]
    end  
 
    @user = current_user
    @participate = @user.participate
    @events_created = @user.events
    @past_events_user = @user.participate.past_events
    @future_events_user = @user.participate.future_events
  end


  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: "User are Deleted :(( bye bye"
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

end
