class MedicareAdvantagesController < ApplicationController
  before_action :set_medicare_advantage, only: [:show, :edit, :update, :destroy]

  # GET /medicare_advantages
  # GET /medicare_advantages.json
  def index
    @medicare_advantages = MedicareAdvantage.all
  end

  # GET /medicare_advantages/1
  # GET /medicare_advantages/1.json
  def show
  end

  # GET /medicare_advantages/new
  def new
    @medicare_advantage = MedicareAdvantage.new
  end

  # GET /medicare_advantages/1/edit
  def edit
  end

  # POST /medicare_advantages
  # POST /medicare_advantages.json
  def create
    @medicare_advantage = MedicareAdvantage.new(medicare_advantage_params)

    respond_to do |format|
      if @medicare_advantage.save
        format.html { redirect_to @medicare_advantage, notice: 'Medicare advantage was successfully created.' }
        format.json { render :show, status: :created, location: @medicare_advantage }
      else
        format.html { render :new }
        format.json { render json: @medicare_advantage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicare_advantages/1
  # PATCH/PUT /medicare_advantages/1.json
  def update
    respond_to do |format|
      if @medicare_advantage.update(medicare_advantage_params)
        format.html { redirect_to @medicare_advantage, notice: 'Medicare advantage was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicare_advantage }
      else
        format.html { render :edit }
        format.json { render json: @medicare_advantage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicare_advantages/1
  # DELETE /medicare_advantages/1.json
  def destroy
    @medicare_advantage.destroy
    respond_to do |format|
      format.html { redirect_to medicare_advantages_url, notice: 'Medicare advantage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicare_advantage
      @medicare_advantage = MedicareAdvantage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicare_advantage_params
      params.require(:medicare_advantage).permit(:state, :state_abbreviation, :organization_name, :enrolled, :total_state_ma_enrollment, :market_share_in_state)
    end
end
