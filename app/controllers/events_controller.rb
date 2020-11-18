class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]


  def index
    @user = User.all
    if params[:title]
      @events = Event.where(["title LIKE ?", "%#{params[:title]}%"]).page params[:page] if params[:title]
    else
      @events = Event.all.order(title: :DESC).page params[:page]
    end  
  end

  def show
    @parts = @event.parts
    if current_user
      user_id = current_user.id
      @user_registered = @parts.where(id: user_id).exists?
    else
      @user_registered = 'Not registered'
    end
  end

  def search 
    @users = User.all
    if params[:search].blank?  
      redirect_to events_path, notice: "Empty field!"
    else  
      @parameter = params[:search].downcase  
      @events = Event.all.where("lower(title) LIKE :search", search: @parameter)  
    end  
  end


  def new
    @user = User.all
    @event = current_user.events.build
  end

  def edit; end


  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to events_path, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to events_path, notice: 'Event was successfully updated.'
    else
      render :edit 
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:title, :image, :content, :date_start, :date_end, :organizer_id)
  end
end
