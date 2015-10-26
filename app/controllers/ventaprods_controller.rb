class VentaprodsController < ApplicationController
  before_action :set_ventaprod, only: [:show, :edit, :update, :destroy]

  # GET /ventaprods
  # GET /ventaprods.json
  def index
    @ventaprods = Ventaprod.all
  end

  # GET /ventaprods/1
  # GET /ventaprods/1.json
  def show
  end

  # GET /ventaprods/new
  def new
    @ventaprod = Ventaprod.new
    @id=(params[:id])
  end

  # GET /ventaprods/1/edit
  def edit
  end

  # POST /ventaprods
  # POST /ventaprods.json
  def create
    @ventaprod = Ventaprod.new(ventaprod_params)
    @ventaprod.entregaprod_id=params[:id]
      if @ventaprod.save
        flash[:success] = 'Venta producto creado exitosamente' 
        redirect_to '/entregaprods/'+params[:id]
      else
        render action: "new"
      end
  end

  # PATCH/PUT /ventaprods/1
  # PATCH/PUT /ventaprods/1.json
  def update
    if @ventaprod.update(ventaprod_params)
      flash[:success] ='Venta producto actualizado exitosamente' 
      redirect_to '/entregaprods/'+@ventaprod.entregaprod_id.to_s
    else
      render action: "edit"
    end
  end

  # DELETE /ventaprods/1
  # DELETE /ventaprods/1.json
  def destroy
    @ventaprod.destroy
    respond_to do |format|
      format.html { redirect_to ventaprods_url, notice: 'Ventaprod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventaprod
      @ventaprod = Ventaprod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventaprod_params
      params.require(:ventaprod).permit(:cantidad, :fecha, :precioUnidad, :estado, :observaciones, :rendicionprod_id, :entregaprod_id)
    end
end
