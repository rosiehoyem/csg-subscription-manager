class SolarGardensController < ApplicationController
  before_action :set_solar_garden, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index]

  # GET /solar_gardens
  # GET /solar_gardens.json
  def index
    @solar_gardens = SolarGarden.all
  end

  # GET /solar_gardens/1
  # GET /solar_gardens/1.json
  def show
  end

  # GET /solar_gardens/new
  def new
    @solar_garden = SolarGarden.new
  end

  # GET /solar_gardens/1/edit
  def edit
  end

  # POST /solar_gardens
  # POST /solar_gardens.json
  def create
    @solar_garden = SolarGarden.new(solar_garden_params)

    respond_to do |format|
      if @solar_garden.save
        format.html { redirect_to @solar_garden, notice: 'Solar garden was successfully created.' }
        format.json { render :show, status: :created, location: @solar_garden }
      else
        format.html { render :new }
        format.json { render json: @solar_garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solar_gardens/1
  # PATCH/PUT /solar_gardens/1.json
  def update
    respond_to do |format|
      if @solar_garden.update(solar_garden_params)
        format.html { redirect_to @solar_garden, notice: 'Solar garden was successfully updated.' }
        format.json { render :show, status: :ok, location: @solar_garden }
      else
        format.html { render :edit }
        format.json { render json: @solar_garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solar_gardens/1
  # DELETE /solar_gardens/1.json
  def destroy
    @solar_garden.destroy
    respond_to do |format|
      format.html { redirect_to solar_gardens_url, notice: 'Solar garden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solar_garden
      @solar_garden = SolarGarden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solar_garden_params
      params.require(:solar_garden).permit(:size, :address, :city, :zip, :operator, :contact_name, :contact_phone, :contact_email)
    end
end
