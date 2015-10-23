class IngresosController < ApplicationController
  before_action :set_ingreso, only: [:show, :edit, :update, :destroy]

  # GET /ingresos
  # GET /ingresos.json
  def index
    @ingresos = Ingreso.all
  end

  # GET /ingresos/1
  # GET /ingresos/1.json
  def show
  end

  # GET /ingresos/new
  def new
    @ingreso = Ingreso.new
  end

  # GET /ingresos/1/edit
  def edit
  end

  # POST /ingresos
  # POST /ingresos.json
  def create
    @ingreso = Ingreso.new(ingreso_params)

      if @ingreso.save
        flash[:success] = 'Ingreso creada exitosamente' 
        redirect_to '/ingresos'
      else
        render action: "new"
      end
  end

  # PATCH/PUT /ingresos/1
  # PATCH/PUT /ingresos/1.json
  def update
      if @ingreso.update(ingreso_params)
        flash[:success] =  'Ingreso actualizado exitosamente' 
        redirect_to '/ingresos'
      else
        render action: "edit"
      end
  end

  # DELETE /ingresos/1
  # DELETE /ingresos/1.json
  def destroy
    @ingreso.destroy
    respond_to do |format|
      format.html { redirect_to ingresos_url, notice: 'Ingreso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingreso
      @ingreso = Ingreso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingreso_params
      params.require(:ingreso).permit(:montoBs, :concepto, :fecha, :estado, :venta_id, :recepcionDonativo_id)
    end
end
