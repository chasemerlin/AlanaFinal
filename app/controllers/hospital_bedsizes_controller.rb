class HospitalBedsizesController < ApplicationController
  before_action :set_hospital_bedsize, only: [:show, :edit, :update, :destroy]

  # GET /hospital_bedsizes
  # GET /hospital_bedsizes.json
  def index
    @hospital_bedsizes = HospitalBedsize.all
  end

  # GET /hospital_bedsizes/1
  # GET /hospital_bedsizes/1.json
  def show
  end

  # GET /hospital_bedsizes/new
  def new
    @hospital_bedsize = HospitalBedsize.new
  end

  # GET /hospital_bedsizes/1/edit
  def edit
  end

  # POST /hospital_bedsizes
  # POST /hospital_bedsizes.json
  def create
    @hospital_bedsize = HospitalBedsize.new(hospital_bedsize_params)

    respond_to do |format|
      if @hospital_bedsize.save
        format.html { redirect_to @hospital_bedsize, notice: 'Hospital bedsize was successfully created.' }
        format.json { render :show, status: :created, location: @hospital_bedsize }
      else
        format.html { render :new }
        format.json { render json: @hospital_bedsize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospital_bedsizes/1
  # PATCH/PUT /hospital_bedsizes/1.json
  def update
    respond_to do |format|
      if @hospital_bedsize.update(hospital_bedsize_params)
        format.html { redirect_to @hospital_bedsize, notice: 'Hospital bedsize was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital_bedsize }
      else
        format.html { render :edit }
        format.json { render json: @hospital_bedsize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospital_bedsizes/1
  # DELETE /hospital_bedsizes/1.json
  def destroy
    @hospital_bedsize.destroy
    respond_to do |format|
      format.html { redirect_to hospital_bedsizes_url, notice: 'Hospital bedsize was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital_bedsize
      @hospital_bedsize = HospitalBedsize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospital_bedsize_params
      params.require(:hospital_bedsize).permit(:hospital_name, :city, :state, :staffed_beds, :total_discharges, :patient_days, :gross_patient_revenue)
    end
end
