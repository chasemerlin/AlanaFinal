class RollupParentsController < ApplicationController
  before_action :set_rollup_parent, only: [:show, :edit, :update, :destroy]

  # GET /rollup_parents
  # GET /rollup_parents.json
  def index
    @rollup_parents = RollupParent.all
  end

  # GET /rollup_parents/1
  # GET /rollup_parents/1.json
  def show
  end

  # GET /rollup_parents/new
  def new
    @rollup_parent = RollupParent.new
  end

  # GET /rollup_parents/1/edit
  def edit
  end

  # POST /rollup_parents
  # POST /rollup_parents.json
  def create
    @rollup_parent = RollupParent.new(rollup_parent_params)

    respond_to do |format|
      if @rollup_parent.save
        format.html { redirect_to @rollup_parent, notice: 'Rollup parent was successfully created.' }
        format.json { render :show, status: :created, location: @rollup_parent }
      else
        format.html { render :new }
        format.json { render json: @rollup_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rollup_parents/1
  # PATCH/PUT /rollup_parents/1.json
  def update
    respond_to do |format|
      if @rollup_parent.update(rollup_parent_params)
        format.html { redirect_to @rollup_parent, notice: 'Rollup parent was successfully updated.' }
        format.json { render :show, status: :ok, location: @rollup_parent }
      else
        format.html { render :edit }
        format.json { render json: @rollup_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rollup_parents/1
  # DELETE /rollup_parents/1.json
  def destroy
    @rollup_parent.destroy
    respond_to do |format|
      format.html { redirect_to rollup_parents_url, notice: 'Rollup parent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rollup_parent
      @rollup_parent = RollupParent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rollup_parent_params
      params.require(:rollup_parent).permit(:mco_id, :owner_id, :company, :al, :ak, :ar, :az, :ca, :co, :ct, :dc, :de, :fl, :ga, :hi, :ia, :indiana, :il, :in, :ks, :ky, :la, :ma, :me, :mi, :md, :mn, :ms, :mo, :mt, :nc, :nd, :ne, :nh, :nj, :nm, :nv, :ny, :oh, :ok, :or, :pa, :ri, :sc, :sd, :tn, :tx, :ut, :va, :vt, :wa, :wi, :wv, :wy, :pr, :foreign)
    end
end
