class HealthPlansController < ApplicationController
  before_action :set_health_plan, only: [:show, :edit, :update, :destroy]

  # GET /health_plans
  # GET /health_plans.json
  def index
    @health_plans = HealthPlan.all
  end

  # GET /health_plans/1
  # GET /health_plans/1.json
  def show
  end

  # GET /health_plans/new
  def new
    @health_plan = HealthPlan.new
  end

  # GET /health_plans/1/edit
  def edit
  end

  # POST /health_plans
  # POST /health_plans.json
  def create
    @health_plan = HealthPlan.new(health_plan_params)

    respond_to do |format|
      if @health_plan.save
        format.html { redirect_to @health_plan, notice: 'Health plan was successfully created.' }
        format.json { render :show, status: :created, location: @health_plan }
      else
        format.html { render :new }
        format.json { render json: @health_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_plans/1
  # PATCH/PUT /health_plans/1.json
  def update
    respond_to do |format|
      if @health_plan.update(health_plan_params)
        format.html { redirect_to @health_plan, notice: 'Health plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_plan }
      else
        format.html { render :edit }
        format.json { render json: @health_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_plans/1
  # DELETE /health_plans/1.json
  def destroy
    @health_plan.destroy
    respond_to do |format|
      format.html { redirect_to health_plans_url, notice: 'Health plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_plan
      @health_plan = HealthPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_plan_params
      params.require(:health_plan).permit(:mco_name, :mco_id, :mco_owner, :owner_id, :address, :city, :state_abbreviation, :zip, :url, :profit_status, :private_public, :telephone_one, :telephone_two, :fax, :contracted_pbm, :contracted_sp_vendor, :service_areas, :aliases, :provider_sponsored, :blues, :al, :ak, :ar, :az, :ca, :co, :ct, :dc, :de, :fl, :ga, :hi, :ia, :indiana, :il, :in, :ks, :ky, :la, :ma, :me, :mi, :md, :mn, :ms, :mo, :mt, :nc, :nd, :ne, :nh, :nj, :nm, :nv, :ny, :oh, :ok, :or, :pa, :ri, :sc, :sd, :tn, :tx, :ut, :va, :vt, :wa, :wi, :wv, :wy, :pr, :foreign)
    end
end
