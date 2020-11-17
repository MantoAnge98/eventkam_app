class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  # GET /events
  # GET /events.json
  def index
    @user = current_user
    if params[:title]
      @events = Event.where(["title LIKE ?", "%#{params[:title]}%"]).page params[:page] if params[:title]
    else
      @events = Event.all.order(title: :ASC).page params[:page]
    end  
  end

  # GET /events/1
  # GET /events/1.json
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


  # GET /events/new
  def new
    @user = User.all
    @event = current_user.events.build
  end

  # GET /events/1/edit
  def edit; end

  # POST /events
  # POST /events.json
  def create
    @event = current_user.events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to events_path, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json 
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
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
