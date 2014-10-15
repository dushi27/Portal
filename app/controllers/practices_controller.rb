class PracticesController < ApplicationController
  before_action :set_practice, only: [:show, :edit, :update, :destroy]

  def index
    @practices = Practice.all
  end

  def show
  end

  def new
    @practice = Practice.new
  end

  def edit
  end

  def create
    #raise params.inspect
    @practice = Practice.new(practice_params)
    @practice.name = params['practice'][':name']
    @practice.speciality = params['practice'][':name']
    @practice.address_1 = params['practice'][':address_1']
    @practice.addres_2 = params['practice'][':addres_2']
    @practice.zip = params['practice'][':zip']
    @practice.phone = params['practice'][':phone']
    @practice.fax = params['practice'][':fax']
    @practice.email = params['practice'][':email']
    @practice.website = params['practice'][':web']

    respond_to do |format|
      if @practice.save
        session[:orgid] = @practice.id
        format.html { redirect_to new_doctor_profile_path(@practice), notice: "Practice #{@practice.name} was successfully created." }
        format.json { render :show, status: :created, location: @practice }
      else
        format.html { render :new }
        format.json { render json: @practice.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @practice = Practice.find(session[:orgid])
    respond_to do |format|
      if @practice.update(practice_params)
        format.html { redirect_to new_doctor_profile_path, notice: "Practice #{@practice.name} was successfully updated." }
        format.json { render :show, status: :ok, location: @practice }
      else
        format.html { render :edit }
        format.json { render json: @practice.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @practice.destroy
    respond_to do |format|
      format.html { redirect_to practices_url, notice: 'Practice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_practice
      @practice = Practice.find(session[:orgid])
    end
  
    def practice_params
      params.require(:practice).permit(:name, :speciality, :address_1, :addres_2, :zip, :phone, :fax, :email, :website)
    end
end
