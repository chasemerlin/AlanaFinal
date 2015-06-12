class MedicaidPlansController < ApplicationController
  before_action :set_medicaid_plan, only: [:show, :edit, :update, :destroy]

  # GET /medicaid_plans
  # GET /medicaid_plans.json
  def index
    @medicaid_plans = MedicaidPlan.all
  end

  # GET /medicaid_plans/1
  # GET /medicaid_plans/1.json
  def show
  end

  # GET /medicaid_plans/new
  def new
    @medicaid_plan = MedicaidPlan.new
  end

  # GET /medicaid_plans/1/edit
  def edit
  end

  # POST /medicaid_plans
  # POST /medicaid_plans.json
  def create
    @medicaid_plan = MedicaidPlan.new(medicaid_plan_params)

    respond_to do |format|
      if @medicaid_plan.save
        format.html { redirect_to @medicaid_plan, notice: 'Medicaid plan was successfully created.' }
        format.json { render :show, status: :created, location: @medicaid_plan }
      else
        format.html { render :new }
        format.json { render json: @medicaid_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicaid_plans/1
  # PATCH/PUT /medicaid_plans/1.json
  def update
    respond_to do |format|
      if @medicaid_plan.update(medicaid_plan_params)
        format.html { redirect_to @medicaid_plan, notice: 'Medicaid plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicaid_plan }
      else
        format.html { render :edit }
        format.json { render json: @medicaid_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicaid_plans/1
  # DELETE /medicaid_plans/1.json
  def destroy
    @medicaid_plan.destroy
    respond_to do |format|
      format.html { redirect_to medicaid_plans_url, notice: 'Medicaid plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicaid_plan
      @medicaid_plan = MedicaidPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicaid_plan_params
      params.require(:medicaid_plan).permit(:mco_id, :mco_name, :mco_owner, :owner_id, :address, :city, :state_abbreviation, :zip, :url, :profit_status, :private_public, :telephone_one, :telephone_two, :fax, :contracted_pbm, :contracted_sp_vendor, :service_areas, :aliases, :provider_sponsored, :blues, :al, :ak, :ar, :az, :ca, :co, :ct, :dc, :de, :fl, :ga, :hi, :ia, :indiana, :il, :in, :ks, :ky, :la, :ma, :me, :mi, :md, :mn, :ms, :mo, :mt, :nc, :nd, :ne, :nh, :nj, :nm, :nv, :ny, :oh, :ok, :or, :pa, :ri, :sc, :sd, :tn, :tx, :ut, :va, :vt, :wa, :wi, :wv, :wy, :pr, :foreign)
    end
end
