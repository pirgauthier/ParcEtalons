class EtalonsController < ApplicationController
  before_action :set_etalon, only: [:show, :edit, :update, :destroy]
  before_action :set_marques, only: [:new, :edit]

  # GET /etalons
  # GET /etalons.json
  def index
    @etalons = Etalon.all.includes(:marque, :sondes)
  end

  # GET /etalons/1
  # GET /etalons/1.json
  def show
  end

  # GET /etalons/new
  def new
    @etalon = Etalon.new
  end

  # GET /etalons/1/edit
  def edit
  end

  # POST /etalons
  # POST /etalons.json
  def create
    @etalon = Etalon.new(etalon_params)

    respond_to do |format|
      if @etalon.save
        format.html { redirect_to @etalon, notice: 'L\'Etalon a été créé avec succès.' }
        format.json { render :show, status: :created, location: @etalon }
      else
        format.html { render :new }
        format.json { render json: @etalon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etalons/1
  # PATCH/PUT /etalons/1.json
  def update
    respond_to do |format|
      if @etalon.update(etalon_params)
        format.html { redirect_to @etalon, notice: 'L\'Etalon a été mis à jour avec succès.' }
        format.json { render :show, status: :ok, location: @etalon }
      else
        format.html { render :edit }
        format.json { render json: @etalon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etalons/1
  # DELETE /etalons/1.json
  def destroy
    @etalon.destroy
    respond_to do |format|
      format.html { redirect_to etalons_url, notice: 'L\'Etalon a été supprimé avec succès.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etalon
      @etalon = Etalon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etalon_params
      params.require(:etalon).permit(:serie, :modele, :marque_id)
    end
	
	def set_marques
	  @marques = Marque.all
	end
end
