class MedicarePlansController < ApplicationController
  before_action :set_medicare_plan, only: [:show, :edit, :update, :destroy]

  # GET /medicare_plans
  # GET /medicare_plans.json
  def index
    @medicare_plans = MedicarePlan.all
  end

  # GET /medicare_plans/1
  # GET /medicare_plans/1.json
  def show
  end

  # GET /medicare_plans/new
  def new
    @medicare_plan = MedicarePlan.new
  end

  # GET /medicare_plans/1/edit
  def edit
  end

  # POST /medicare_plans
  # POST /medicare_plans.json
  def create
    @medicare_plan = MedicarePlan.new(medicare_plan_params)

    respond_to do |format|
      if @medicare_plan.save
        format.html { redirect_to @medicare_plan, notice: 'Medicare plan was successfully created.' }
        format.json { render :show, status: :created, location: @medicare_plan }
      else
        format.html { render :new }
        format.json { render json: @medicare_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicare_plans/1
  # PATCH/PUT /medicare_plans/1.json
  def update
    respond_to do |format|
      if @medicare_plan.update(medicare_plan_params)
        format.html { redirect_to @medicare_plan, notice: 'Medicare plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicare_plan }
      else
        format.html { render :edit }
        format.json { render json: @medicare_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicare_plans/1
  # DELETE /medicare_plans/1.json
  def destroy
    @medicare_plan.destroy
    respond_to do |format|
      format.html { redirect_to medicare_plans_url, notice: 'Medicare plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicare_plan
      @medicare_plan = MedicarePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicare_plan_params
      params.require(:medicare_plan).permit(:mco_id, :mco_name, :mco_owner, :owner_id, :address, :city, :state_abbreviation, :zip, :url, :profit_status, :private_public, :telephone_one, :telephone_two, :fax, :contracted_pbm, :contracted_sp_vendor, :service_areas, :aliases, :provider_sponsored, :blues, :al, :ak, :ar, :az, :ca, :co, :ct, :dc, :de, :fl, :ga, :hi, :ia, :indiana, :il, :in, :ks, :ky, :la, :ma, :me, :mi, :md, :mn, :ms, :mo, :mt, :nc, :nd, :ne, :nh, :nj, :nm, :nv, :ny, :oh, :ok, :or, :pa, :ri, :sc, :sd, :tn, :tx, :ut, :va, :vt, :wa, :wi, :wv, :wy, :pr, :foreign)
    end
end
