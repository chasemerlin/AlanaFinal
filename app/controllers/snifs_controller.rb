class SnifsController < ApplicationController
  before_action :set_snif, only: [:show, :edit, :update, :destroy]

  # GET /snifs
  # GET /snifs.json
  def index
    @snifs = Snif.all
  end

  # GET /snifs/1
  # GET /snifs/1.json
  def show
  end

  # GET /snifs/new
  def new
    @snif = Snif.new
  end

  # GET /snifs/1/edit
  def edit
  end

  # POST /snifs
  # POST /snifs.json
  def create
    @snif = Snif.new(snif_params)

    respond_to do |format|
      if @snif.save
        format.html { redirect_to @snif, notice: 'Snif was successfully created.' }
        format.json { render :show, status: :created, location: @snif }
      else
        format.html { render :new }
        format.json { render json: @snif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snifs/1
  # PATCH/PUT /snifs/1.json
  def update
    respond_to do |format|
      if @snif.update(snif_params)
        format.html { redirect_to @snif, notice: 'Snif was successfully updated.' }
        format.json { render :show, status: :ok, location: @snif }
      else
        format.html { render :edit }
        format.json { render json: @snif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snifs/1
  # DELETE /snifs/1.json
  def destroy
    @snif.destroy
    respond_to do |format|
      format.html { redirect_to snifs_url, notice: 'Snif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snif
      @snif = Snif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snif_params
      params.require(:snif).permit(:name, :phone_number, :address, :city, :state, :zipcode, :mcr_rating, :beds_capacity, :medicare, :medicaid, :percentage_occupied, :beds_unavailable, :in_hospital, :population, :corporation)
    end
end
