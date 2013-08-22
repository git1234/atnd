class AttendUsersController < ApplicationController
  before_action :set_attend_user, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /attend_users
  # GET /attend_users.json
  def index
    @attend_users = AttendUser.all
  end

  # GET /attend_users/1
  # GET /attend_users/1.json
  def show
  end

  # GET /attend_users/new
  def new
    @attend_user = AttendUser.new
    @event_id = params[:event_id]
    logger.debug("----------#{@event_id}")
  end

  # GET /attend_users/1/edit
  def edit
    @event_id = params[:event_id]
  end

  # POST /attend_users
  # POST /attend_users.json
  def create
    @attend_user = AttendUser.new(attend_user_params)

    respond_to do |format|
      if @attend_user.save
        format.html { redirect_to events_path, notice: 'Attend user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attend_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @attend_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attend_users/1
  # PATCH/PUT /attend_users/1.json
  def update
    respond_to do |format|
      if @attend_user.update(attend_user_params)
        format.html { redirect_to events_path, notice: 'Attend user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attend_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attend_users/1
  # DELETE /attend_users/1.json
  def destroy
    @attend_user.destroy
    respond_to do |format|
      format.html { redirect_to attend_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attend_user
      @attend_user = AttendUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attend_user_params
      params.require(:attend_user).permit(:user_id, :event_id, :status, :comment)
    end
end
