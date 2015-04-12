class HospitalReadmissionsController < ApplicationController
  before_action :set_hospital_readmission, only: [:show, :edit, :update, :destroy]

  # GET /hospital_readmissions
  # GET /hospital_readmissions.json
  def index
    @hospital_readmissions = HospitalReadmission.all
  end

  # GET /hospital_readmissions/1
  # GET /hospital_readmissions/1.json
  def show
  end

  # GET /hospital_readmissions/new
  def new
    @hospital_readmission = HospitalReadmission.new
  end

  # GET /hospital_readmissions/1/edit
  def edit
  end

  # POST /hospital_readmissions
  # POST /hospital_readmissions.json
  def create
    @hospital_readmission = HospitalReadmission.new(hospital_readmission_params)

    respond_to do |format|
      if @hospital_readmission.save
        format.html { redirect_to @hospital_readmission, notice: 'Hospital readmission was successfully created.' }
        format.json { render :show, status: :created, location: @hospital_readmission }
      else
        format.html { render :new }
        format.json { render json: @hospital_readmission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospital_readmissions/1
  # PATCH/PUT /hospital_readmissions/1.json
  def update
    respond_to do |format|
      if @hospital_readmission.update(hospital_readmission_params)
        format.html { redirect_to @hospital_readmission, notice: 'Hospital readmission was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital_readmission }
      else
        format.html { render :edit }
        format.json { render json: @hospital_readmission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospital_readmissions/1
  # DELETE /hospital_readmissions/1.json
  def destroy
    @hospital_readmission.destroy
    respond_to do |format|
      format.html { redirect_to hospital_readmissions_url, notice: 'Hospital readmission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital_readmission
      @hospital_readmission = HospitalReadmission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospital_readmission_params
      params.require(:hospital_readmission).permit(:provider_id, :hospital_name, :address, :city, :state, :zip_code, :county_name, :phone_number, :measure_name, :measure_id, :compared_to_national, :denominator, :score, :lower_estimate, :higher_estimate, :footnote, :measure_start_date, :measure_end_date)
    end
end
