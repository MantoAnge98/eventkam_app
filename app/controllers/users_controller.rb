class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all.order(name: :ASC).page params[:page]
    @users = User.where(["name LIKE ?", "%#{params[:name]}%"]) if params[:name]
 
    # #participants
    # @user = current_user
    # @participant = @user.participants
    # @events_created = @user.events
  end


  def show
    @user = User.find(params[:id])
  end

end
