class DoctorProfilesController < ApplicationController
  before_action :set_doctor_profile, only: [:show, :edit, :update, :destroy]

  def index
    @doctor_profiles = DoctorProfile.all
  end

  def show
  end

  def new
    @doctor_profile = DoctorProfile.new
  end

  def edit
  end

  def create
    #raise params.inspect
    @practice = Practice.find(session[:orgid])
    @doctor_profile = @practice.doctor_profiles.create(doctor_profile_params)
    #@doctor_profile = DoctorProfile.new(doctor_profile_params)
    

    respond_to do |format|
      if @doctor_profile.save
        format.html { redirect_to new_doctor_profile_path, notice: "Doctor #{@doctor_profile.firstname} #{@doctor_profile.lastname} profile was successfully created." }
        format.json { render :show, status: :created, location: @doctor_profile }
      else
        format.html { render :new }
        format.json { render json: @doctor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @doctor_profile.update(doctor_profile_params)
        format.html { redirect_to @doctor_profile, notice: 'Doctor profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_profile }
      else
        format.html { render :edit }
        format.json { render json: @doctor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @doctor_profile.destroy
    respond_to do |format|
      format.html { redirect_to doctor_profiles_url, notice: 'Doctor profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_doctor_profile
      @doctor_profile = DoctorProfile.find(params[:id])
    end

    def doctor_profile_params
      params.require(:doctor_profile).permit(:firstname, :lastname, :about, :profilepic, :schedule, :speciality, :title, :userid, :zipcode, :fee, :orgid, :npi)
    end
end
