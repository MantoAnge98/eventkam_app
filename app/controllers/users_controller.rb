class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all.order(name: :ASC).page params[:page]
    @users = User.where(["name LIKE ?", "%#{params[:name]}%"]) if params[:name]
 
    @user = current_user
    @participate = @user.participate
    @events_created = @user.events
    @past_events_user = @user.participate.past_events
    @future_events_user = @user.participate.future_events
  end


  def show
    @user = User.find(params[:id])
  end

end
