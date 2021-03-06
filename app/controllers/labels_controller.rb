class LabelsController < ApplicationController
  before_action :set_label, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: %i[index show]
  
  def index
    @label = Label.all.order(created_at: :desc).page params[:page]
  end
  
  def new
    @label = Label.new
  end

  def edit
  end

  def create
    @label = Label.new (label_params)
    @label.user_id = current_user.id
    @label.save
    flash[:success] = 'Label successfully create !'
    redirect_to user_path(current_user.id)
  end

  def update
    if @label.update(label_params)
      flash[:success] = 'Label successfully update !'
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end
  
  def destroy
    @label.destroy
    flash[:success] = 'label successfully destroy !'
    redirect_to user_path(current_user.id)
  end
  private
  def label_params
    params.require(:label).permit(:title)
  end
  def set_label
    @label = Label.find(params[:id])
  end
end
