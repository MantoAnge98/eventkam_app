class UsersController < ApplicationController
  def index
    @users = User.all.order(name: :ASC).page params[:page]
    @users = User.where(["name LIKE ?", "%#{params[:name]}%"]) if params[:name]
  end

  def show
    @user = User.find(params[:id])
  end

end
