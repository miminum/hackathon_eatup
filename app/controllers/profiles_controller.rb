class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!  

  def cuisine_selector
    
    @current_profile = Profile.find_by(user_id: current_user.id)
    redirect_to new_profile_path if @current_profile.nil?
  end

  def cuisine_update
    @current_profile = Profile.find_by(user_id: current_user.id)
    if @current_profile.update(profile_params)
      redirect_to '/profiles/'
    else
      redirect_to cuisine_path
    end
  end
  # GET /profiles
  # GET /profiles.json
  def index
    @current_profile = Profile.find_by(user_id: current_user.id)
    @profiles = Profile.all

    current_cuisine = @current_profile.cuisine_preference
    redirect_to "/cuisine" if current_cuisine.nil?
    @profiles_by_cuisine = Profile.where(cuisine_preference: current_cuisine) - [@current_profile]
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to "/cuisine", notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profiles_path, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :blurb, :profile_image_data, :profile_image, :remove_profile_image, :gender, :city, :country_code, :user_id, :cuisine_preference)
    end
end
