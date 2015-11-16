class HistoriaClinicasController < ApplicationController
  before_action :set_historia_clinica, only: [:show, :edit, :update, :destroy]

  # GET /historia_clinicas
  # GET /historia_clinicas.json
  def index
    @historia_clinicas = buscar(params[:palabra])
  end

  def buscar(interno)
    items = Array.new
    aux = HistoriaClinica.all
    if interno != "" && interno != nil
      aux.each do |item|
        if(item.correspondeAinterno(interno))
          items.push(item)
        end
      end
    else
      items = aux
    end
    return items
  end

  # GET /historia_clinicas/1
  # GET /historia_clinicas/1.json
  def show
  end

  # GET /historia_clinicas/new
  def new
    @historia_clinica = HistoriaClinica.new
    # @paciente = Interno.find_by_id(params[:interno_id])
    # @historia_clinica.interno = @paciente
    @id=(params[:id])
  end

  # GET /historia_clinicas/1/edit
  def edit
  end

  # POST /historia_clinicas
  # POST /historia_clinicas.json
  def create
    @historia_clinica = HistoriaClinica.new(historia_clinica_params)
    @historia_clinica.interno_id=params[:interno_id]
    @interno=Interno.find(params[:interno_id])

    if @historia_clinica.save
        flash[:success] = 'Historia clinica creada exitosamente'
        redirect_to '/historia_clinicas'
      else
        render action: "new"
      end
  end

  # PATCH/PUT /historia_clinicas/1
  # PATCH/PUT /historia_clinicas/1.json
  def update
    @historia_clinica = HistoriaClinica.find(params[:id])
      if @historia_clinica.update(historia_clinica_params)
        flash[:success] = "Historia clinica actualizada exitosamente"
        redirect_to '/historia_clinicas'
      else
        render action: "edit"
      end
  end

  # DELETE /historia_clinicas/1
  # DELETE /historia_clinicas/1.json
  def destroy
    @historia_clinica.destroy
    respond_to do |format|
      format.html { redirect_to historia_clinicas_url, notice: 'Historia clinica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_clinica
      @historia_clinica = HistoriaClinica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historia_clinica_params
      params.require(:historia_clinica).permit(:enfermedades, :causa_internacion, :observaciones, :interno_id, :fecha)
    end
end
