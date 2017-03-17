class SondesController < ApplicationController
  before_action :set_sonde, only: [:show, :edit, :update, :destroy]
  before_action :set_etalons, only: [:new, :edit, :update]

  # GET /sondes
  # GET /sondes.json
  def index
    @sondes = Sonde.all.includes(:etalon)
  end

  # GET /sondes/1
  # GET /sondes/1.json
  def show
  end

  # GET /sondes/new
  def new
    @sonde = Sonde.new
  end

  # GET /sondes/1/edit
  def edit
  end

  # POST /sondes
  # POST /sondes.json
  def create
    @sonde = Sonde.new(sonde_params)

    respond_to do |format|
      if @sonde.save
        format.html { redirect_to @sonde, notice: 'La Sonde a été créée avec succès.' }
        format.json { render :show, status: :created, location: @sonde }
      else
        format.html { render :new }
        format.json { render json: @sonde.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sondes/1
  # PATCH/PUT /sondes/1.json
  def update
    respond_to do |format|
      if @sonde.update(sonde_params)
        format.html { redirect_to @sonde, notice: 'La Sonde a été mise à jour avec succès' }
        format.json { render :show, status: :ok, location: @sonde }
      else
        format.html { render :edit }
        format.json { render json: @sonde.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sondes/1
  # DELETE /sondes/1.json
  def destroy
    @sonde.destroy
    respond_to do |format|
      format.html { redirect_to sondes_url, notice: 'La Sonde a été supprimée avec succès.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sonde
      @sonde = Sonde.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sonde_params
      params.require(:sonde).permit(:serie, :modele, :etalon_id)
    end
	
	def set_etalons
		@etalons = Etalon.all
	end
end
