class CourtshipPreferencesController < ApplicationController
  before_action :set_courtship_preference, only: [:show, :edit, :update, :destroy]

  # GET /courtship_preferences
  # GET /courtship_preferences.json
  def index
    @courtship_preferences = CourtshipPreference.all
  end

  # GET /courtship_preferences/1
  # GET /courtship_preferences/1.json
  def show
  end

  # GET /courtship_preferences/new
  def new
    @courtship_preference = CourtshipPreference.new
  end

  # GET /courtship_preferences/1/edit
  def edit
  end

  # POST /courtship_preferences
  # POST /courtship_preferences.json
  def create
    @courtship_preference = CourtshipPreference.new(courtship_preference_params)

    respond_to do |format|
      if @courtship_preference.save
        format.html { redirect_to @courtship_preference, notice: 'Courtship preference was successfully created.' }
        format.json { render :show, status: :created, location: @courtship_preference }
      else
        format.html { render :new }
        format.json { render json: @courtship_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courtship_preferences/1
  # PATCH/PUT /courtship_preferences/1.json
  def update
    respond_to do |format|
      if @courtship_preference.update(courtship_preference_params)
        format.html { redirect_to @courtship_preference, notice: 'Courtship preference was successfully updated.' }
        format.json { render :show, status: :ok, location: @courtship_preference }
      else
        format.html { render :edit }
        format.json { render json: @courtship_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courtship_preferences/1
  # DELETE /courtship_preferences/1.json
  def destroy
    @courtship_preference.destroy
    respond_to do |format|
      format.html { redirect_to courtship_preferences_url, notice: 'Courtship preference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courtship_preference
      @courtship_preference = CourtshipPreference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def courtship_preference_params
      params.require(:courtship_preference).permit(:name)
    end
end
