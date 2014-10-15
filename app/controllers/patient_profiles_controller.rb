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
    @patient_profile = PatientProfile.create()
    @patient_profile.userid = @patient_profile.id
    @patient_profile.firstname = params['patient_profile'][':firstname']
    @patient_profile.lastname = params['patient_profile'][':lastname']
    @patient_profile.docpref1 = params['patient_profile'][':docpref1']
    @patient_profile.docpref2 = params['patient_profile'][':docpref2']
    @patient_profile.docpref3 = params['patient_profile'][':docpref3']
    @patient_profile.pcprequest = params['patient_profile'][':pcprequest']
    @patient_profile.zipcode = params['patient_profile'][':zipcode']
    @patient_profile.profilepic = params['patient_profile'][':profilepic']
    @patient_profile.save
    respond_to do |format|
      if @patient_profile.save
        format.html { redirect_to new_patient_profile_path, notice: "Patient #{@patient_profile.firstname} #{@patient_profile.lastname}'s profile was successfully created." }
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
      params.require(:patient_profile).permit(:user_id,:firstname, :lastname, :pcprequest, :profilepic, :zipcode, :docpref1, :docpref2, :doctpref3)
    end
end
