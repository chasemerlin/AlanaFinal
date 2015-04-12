class ZipMsasController < ApplicationController
  before_action :set_zip_msa, only: [:show, :edit, :update, :destroy]

  # GET /zip_msas
  # GET /zip_msas.json
  def index
    @zip_msas = ZipMsa.all
  end

  # GET /zip_msas/1
  # GET /zip_msas/1.json
  def show
  end

  # GET /zip_msas/new
  def new
    @zip_msa = ZipMsa.new
  end

  # GET /zip_msas/1/edit
  def edit
  end

  # POST /zip_msas
  # POST /zip_msas.json
  def create
    @zip_msa = ZipMsa.new(zip_msa_params)

    respond_to do |format|
      if @zip_msa.save
        format.html { redirect_to @zip_msa, notice: 'Zip msa was successfully created.' }
        format.json { render :show, status: :created, location: @zip_msa }
      else
        format.html { render :new }
        format.json { render json: @zip_msa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zip_msas/1
  # PATCH/PUT /zip_msas/1.json
  def update
    respond_to do |format|
      if @zip_msa.update(zip_msa_params)
        format.html { redirect_to @zip_msa, notice: 'Zip msa was successfully updated.' }
        format.json { render :show, status: :ok, location: @zip_msa }
      else
        format.html { render :edit }
        format.json { render json: @zip_msa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zip_msas/1
  # DELETE /zip_msas/1.json
  def destroy
    @zip_msa.destroy
    respond_to do |format|
      format.html { redirect_to zip_msas_url, notice: 'Zip msa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zip_msa
      @zip_msa = ZipMsa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zip_msa_params
      params.require(:zip_msa).permit(:zip_code, :state_abbreviation, :msa_number, :gpci_one, :gpci_two, :gpci_three, :county_number, :msa_name, :zip_population, :msa_population)
    end
end
