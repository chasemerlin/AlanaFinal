class HospitalGeneralsController < ApplicationController
  before_action :set_hospital_general, only: [:show, :edit, :update, :destroy]

  # GET /hospital_generals
  # GET /hospital_generals.json
  def index
    @hospital_generals = HospitalGeneral.all
  end

  # GET /hospital_generals/1
  # GET /hospital_generals/1.json
  def show
    # get SNIFs in the same MSA as hospital
    h = HospitalGeneral.find(params["id"])
    zip = ZipMsa.where(zip_code: h.zip).first
    zips_in_msa = ZipMsa.where(msa_name: zip.msa_name).map {|record| record.zip_code}
    @snifs = Snif.where("zipcode IN (?)", zips_in_msa)
    # get top Health Plans
    @state = h.state
    @health_plans = HealthPlan.all.select {|plan| !plan.total_in_state(@state).nil?}.sort_by {|plan| plan.total_in_state(@state)}.reverse.first(5)
  end

  # GET /hospital_generals/new
  def new
    @hospital_general = HospitalGeneral.new
  end

  # GET /hospital_generals/1/edit
  def edit
  end

  # POST /hospital_generals
  # POST /hospital_generals.json
  def create
    @hospital_general = HospitalGeneral.new(hospital_general_params)

    respond_to do |format|
      if @hospital_general.save
        format.html { redirect_to @hospital_general, notice: 'Hospital general was successfully created.' }
        format.json { render :show, status: :created, location: @hospital_general }
      else
        format.html { render :new }
        format.json { render json: @hospital_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospital_generals/1
  # PATCH/PUT /hospital_generals/1.json
  def update
    respond_to do |format|
      if @hospital_general.update(hospital_general_params)
        format.html { redirect_to @hospital_general, notice: 'Hospital general was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital_general }
      else
        format.html { render :edit }
        format.json { render json: @hospital_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospital_generals/1
  # DELETE /hospital_generals/1.json
  def destroy
    @hospital_general.destroy
    respond_to do |format|
      format.html { redirect_to hospital_generals_url, notice: 'Hospital general was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital_general
      @hospital_general = HospitalGeneral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospital_general_params
      params.require(:hospital_general).permit(:provider_id, :name, :address, :city, :state, :zip, :county, :phone, :type, :ownership, :emergency)
    end
end
