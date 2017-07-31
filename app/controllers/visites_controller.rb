class VisitesController < ApplicationController
  before_action :set_visite, only: [:show, :edit, :update, :destroy]

  # GET /visites
  # GET /visites.json
  def index
    @visites = Visite.all
  end

  # GET /visites/1
  # GET /visites/1.json
  def show
  end

  def comparer
    @patient = Patient.find(params[:patient_id])  
  end

  # GET /visites/new
  def new  
    @patient = Patient.find(params[:patient_id])    
    @visite = @patient.visites.build  
  end

  # GET /visites/1/edit
  def edit
  end

  # POST /visites
  # POST /visites.json
  def create
    @visite = Visite.new(visite_params)

    respond_to do |format|
      if @visite.save
        format.html { redirect_to @visite.patient, notice: 'Visite was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /visites/1
  # PATCH/PUT /visites/1.json
  def update
    respond_to do |format|
      if @visite.update(visite_params)
        format.html { redirect_to @patient, notice: 'Visite was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /visites/1
  # DELETE /visites/1.json
  def destroy
    @visite.destroy
    respond_to do |format|
      format.html { redirect_to visites_url, notice: 'Visite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visite
      @visite = Visite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visite_params
      params.require(:visite).permit(:date, :stade, :longeur, :largeur, :profondeur, :echelle, :patient_id, images: [])
    end
end
