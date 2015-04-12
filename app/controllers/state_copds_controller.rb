class StateCopdsController < ApplicationController
  before_action :set_state_copd, only: [:show, :edit, :update, :destroy]

  # GET /state_copds
  # GET /state_copds.json
  def index
    @state_copds = StateCopd.all
  end

  # GET /state_copds/1
  # GET /state_copds/1.json
  def show
  end

  # GET /state_copds/new
  def new
    @state_copd = StateCopd.new
  end

  # GET /state_copds/1/edit
  def edit
  end

  # POST /state_copds
  # POST /state_copds.json
  def create
    @state_copd = StateCopd.new(state_copd_params)

    respond_to do |format|
      if @state_copd.save
        format.html { redirect_to @state_copd, notice: 'State copd was successfully created.' }
        format.json { render :show, status: :created, location: @state_copd }
      else
        format.html { render :new }
        format.json { render json: @state_copd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_copds/1
  # PATCH/PUT /state_copds/1.json
  def update
    respond_to do |format|
      if @state_copd.update(state_copd_params)
        format.html { redirect_to @state_copd, notice: 'State copd was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_copd }
      else
        format.html { render :edit }
        format.json { render json: @state_copd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_copds/1
  # DELETE /state_copds/1.json
  def destroy
    @state_copd.destroy
    respond_to do |format|
      format.html { redirect_to state_copds_url, notice: 'State copd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_copd
      @state_copd = StateCopd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_copd_params
      params.require(:state_copd).permit(:state, :respondents, :has_copd, :percentage, :ninety_five_percent_confidence_interval, :abbreviation)
    end
end
