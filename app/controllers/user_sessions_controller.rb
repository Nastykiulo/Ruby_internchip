class UserSessionsController < ApplicationController
  before_action :set_user_session, only: %i[ show edit update destroy ]

  # GET /user_sessions or /user_sessions.json
  def index
    @user_sessions = UserSession.all
  end

  # GET /user_sessions/1 or /user_sessions/1.json
  # def show
  # end

  # GET /user_sessions/new
  def new
    @user_session = UserSession.new
  end

  # # GET /user_sessions/1/edit
  # def edit
  # end

  # POST /user_sessions or /user_sessions.json
  # def create
  #   @user_session = UserSession.new(user_session_params)

  #   respond_to do |format|
  #     if @user_session.save
  #       format.html { redirect_to @user_session, notice: "User was successfully logged in." }
  #       format.json { render :show, status: :created, location: @user_session }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @user_session.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def create
    @user_session = UserSession.new(user_session_params.to_h)
    if @user_session.save
      redirect_to root_url
    else
      render :action => :new
    end
  end

  # PATCH/PUT /user_sessions/1 or /user_sessions/1.json
  # def update
  #   respond_to do |format|
  #     if @user_session.update(user_session_params)
  #       format.html { redirect_to @user_session, notice: "User session was successfully updated." }
  #       format.json { render :show, status: :ok, location: @user_session }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @user_session.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /user_sessions/1 or /user_sessions/1.json
  # def destroy
  #   @user_session.destroy
  #   respond_to do |format|
  #     format.html { redirect_to user_sessions_url, notice: "User was successfully logged out" }
  #     format.json { head :no_content }
  #   end
  # end

  def destroy
    current_user_session.destroy
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_session
      @user_session = UserSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_session_params
      params.require(:user_session).permit(:username, :password)
    end
end
