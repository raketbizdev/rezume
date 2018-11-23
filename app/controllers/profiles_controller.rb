class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new

    3.times { @profile.socials.build}
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
        format.html { redirect_to @profile, info: 'Profile was successfully created.' }
        format.json { render :show, success: :created, location: @profile }
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
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
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
      params.require(:profile).permit(
        :first_name, 
        :middle_name, 
        :last_name, 
        :position, 
        :address, 
        :mobile, 
        :phone, 
        :email, 
        :website,
        socials_attributes: [
          :id,
          :social_media_icon, 
          :social_media_name, 
          :social_media_url,
          :_destroy
        ],
        awards_attributes: [
          :id,
          :award_name, 
          :award_details,   
          :_destroy
        ],
        work_experiences_attributes: [
          :id,
          :start_year, 
          :end_year,  
          :work_position,  
          :work_description,   
          :_destroy,
          responsibilities_attributes:[
                :id,
                :list_of_responsibility,
                :_destroy,
          ]
          
        ],
        educations_attributes: [
          :id,
          :start_study, 
          :year_graduated,  
          :course,  
          :school, 
          :course_description,   
          :_destroy
        ],
        skills_attributes: [
          :id,
          :skill_name, 
          :skill_mastery,    
          :_destroy
        ],
          )
    end
end