class EgresoProduccionsController < ApplicationController
  before_action :set_egreso_produccion, only: [:show, :edit, :update, :destroy]

  # GET /egreso_produccions
  # GET /egreso_produccions.json
  def index
    @egreso_produccions = EgresoProduccion.all
  end

  # GET /egreso_produccions/1
  # GET /egreso_produccions/1.json
  def show
  end

  # GET /egreso_produccions/new
  def new
    @egreso_produccion = EgresoProduccion.new
    @egreso = Egreso.find_by_id(:egreso_id)
    @produccion = Produccion.find_by_id(:produccion_id)
    @egreso_produccion.egreso = @egreso
    @egreso_produccion.produccion = @produccion

  end

  # GET /egreso_produccions/1/edit
  def edit
  end

  # POST /egreso_produccions
  # POST /egreso_produccions.json
  def create
    @egreso_produccion = EgresoProduccion.new(egreso_produccion_params)
   
      if @egreso_produccion.save
        flash[:success] = 'Egreso Produccion creado exitosamente'
        redirect_to '/egreso_produccions'
      else
        render action: "new"
      end
  end

  # PATCH/PUT /egreso_produccions/1
  # PATCH/PUT /egreso_produccions/1.json
  def update
    @egreso_produccion = EgresoProduccion.find(params[:id])
      if @egreso_produccion.update(egreso_produccion_params)
        flash[:success] = "Egreso Produccion actualizado exitosamente"
        redirect_to '/egreso_produccions'
      else
        render action: "edit"
      end
  end

  # DELETE /egreso_produccions/1
  # DELETE /egreso_produccions/1.json
  def destroy
    @egreso_produccion.destroy
    respond_to do |format|
      format.html { redirect_to egreso_produccions_url, notice: 'Egreso produccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egreso_produccion
      @egreso_produccion = EgresoProduccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egreso_produccion_params
      params.require(:egreso_produccion).permit(:observaciones, :egreso_id, :produccion_id)
    end
end
