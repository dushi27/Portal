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
    @doctor_profile = DoctorProfile.create()
    @doctor_profile.firstname = params['doctor_profile'][':firstname']
    @doctor_profile.lastname = params['doctor_profile'][':lastname']
    @doctor_profile.about = params['doctor_profile'][':about']
    @doctor_profile.profilepic = params['doctor_profile'][':profilepic']
    @doctor_profile.schedule = params['doctor_profile'][':schedule']
    @doctor_profile.speciality = params['doctor_profile'][':speciality']
    @doctor_profile.title = params['doctor_profile'][':title']    
    @doctor_profile.zipcode = params['doctor_profile'][':zipcode']
    @doctor_profile.fee = params['doctor_profile'][':fee']
    @doctor_profile.plan = params['doctor_profile'][':plan']
    @doctor_profile.npi = params['doctor_profile'][':npi']
    @doctor_profile.orgid = session[:orgid] 
    @doctor_profile.userid = @doctor_profile.id

    respond_to do |format|
      if @doctor_profile.save
        format.html { redirect_to new_doctor_profile_path, notice: "Doctor #{@doctor_profile.firstname} #{@doctor_profile.lastname}'s' profile was successfully created." }
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
