class PatientProfilesController < ApplicationController
  before_action :set_patient_profile, only: [:show, :edit, :update, :destroy]

  def index
    @patient_profiles = PatientProfile.all
  end

  def show
  end

  def new
    @patient_profile = PatientProfile.new
  end

  def edit
  end

  def create
    @patient_profile = PatientProfile.new(patient_profile_params)

    respond_to do |format|
      if @patient_profile.save
        format.html { redirect_to @patient_profile, notice: 'Patient profile was successfully created.' }
        format.json { render :show, status: :created, location: @patient_profile }
      else
        format.html { render :new }
        format.json { render json: @patient_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @patient_profile.update(patient_profile_params)
        format.html { redirect_to @patient_profile, notice: 'Patient profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_profile }
      else
        format.html { render :edit }
        format.json { render json: @patient_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @patient_profile.destroy
    respond_to do |format|
      format.html { redirect_to patient_profiles_url, notice: 'Patient profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_patient_profile
      @patient_profile = PatientProfile.find(params[:id])
    end

    def patient_profile_params
      params.require(:patient_profile).permit(:user_id, :firstname, :last, :pcprequest, :profilepic, :zipcode, :docpref1, :docpref2, :doctpref3)
    end
end
