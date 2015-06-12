class CommercialRiskPlansController < ApplicationController
  before_action :set_commercial_risk_plan, only: [:show, :edit, :update, :destroy]

  # GET /commercial_risk_plans
  # GET /commercial_risk_plans.json
  def index
    @commercial_risk_plans = CommercialRiskPlan.all
  end

  # GET /commercial_risk_plans/1
  # GET /commercial_risk_plans/1.json
  def show
  end

  # GET /commercial_risk_plans/new
  def new
    @commercial_risk_plan = CommercialRiskPlan.new
  end

  # GET /commercial_risk_plans/1/edit
  def edit
  end

  # POST /commercial_risk_plans
  # POST /commercial_risk_plans.json
  def create
    @commercial_risk_plan = CommercialRiskPlan.new(commercial_risk_plan_params)

    respond_to do |format|
      if @commercial_risk_plan.save
        format.html { redirect_to @commercial_risk_plan, notice: 'Commercial risk plan was successfully created.' }
        format.json { render :show, status: :created, location: @commercial_risk_plan }
      else
        format.html { render :new }
        format.json { render json: @commercial_risk_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercial_risk_plans/1
  # PATCH/PUT /commercial_risk_plans/1.json
  def update
    respond_to do |format|
      if @commercial_risk_plan.update(commercial_risk_plan_params)
        format.html { redirect_to @commercial_risk_plan, notice: 'Commercial risk plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @commercial_risk_plan }
      else
        format.html { render :edit }
        format.json { render json: @commercial_risk_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercial_risk_plans/1
  # DELETE /commercial_risk_plans/1.json
  def destroy
    @commercial_risk_plan.destroy
    respond_to do |format|
      format.html { redirect_to commercial_risk_plans_url, notice: 'Commercial risk plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commercial_risk_plan
      @commercial_risk_plan = CommercialRiskPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commercial_risk_plan_params
      params.require(:commercial_risk_plan).permit(:mco_name, :mco_id, :mco_owner, :owner_id, :address, :city, :state_abbreviation, :zip, :url, :profit_status, :private_public, :telephone_one, :telephone_two, :fax, :contracted_pbm, :contracted_sp_vendor, :service_areas, :aliases, :provider_sponsored, :blues, :al, :ak, :ar, :az, :ca, :co, :ct, :dc, :de, :fl, :ga, :hi, :ia, :indiana, :il, :in, :ks, :ky, :la, :ma, :me, :mi, :md, :mn, :ms, :mo, :mt, :nc, :nd, :ne, :nh, :nj, :nm, :nv, :ny, :oh, :ok, :or, :pa, :ri, :sc, :sd, :tn, :tx, :ut, :va, :vt, :wa, :wi, :wv, :wy, :pr, :foreign)
    end
end
