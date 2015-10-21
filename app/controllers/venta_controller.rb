class VentaController < ApplicationController
  before_action :set_ventum, only: [:show, :edit, :update, :destroy]

  # GET /venta
  # GET /venta.json
  def index
    @venta = Ventum.all
    if(params["palabra"]!=nil)
        @voluntarios=Ventum.where("feche=?  OR precioUnidad=? OR cantidad =?", params["palabra"] , params["palabra"] , params["palabra"])    
    end
  end

  # GET /venta/1
  # GET /venta/1.json
  def show
  end

  # GET /venta/new
  def new
    @ventum = Ventum.new
  end

  # GET /venta/1/edit
  def edit
  end

  # POST /venta
  # POST /venta.json
  def create
    @ventum = Ventum.new(ventum_params)
      if @ventum.save
        flash[:success] =  'Venta creada exitosamente' 
        redirect_to '/venta'
      else
        render action: "new"
      end
  end

  # PATCH/PUT /venta/1
  # PATCH/PUT /venta/1.json
  def update
      if @ventum.update(ventum_params)
        flash[:success] =   'Venta actualizada exitosamente' 
        redirect_to '/venta'
      else
        render action: "edit"
      end
  end

  # DELETE /venta/1
  # DELETE /venta/1.json
  def destroy
    @ventum.destroy
    respond_to do |format|
      format.html { redirect_to venta_url, notice: 'Ventum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventum
      @ventum = Ventum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventum_params
      params.require(:ventum).permit(:cantidad, :feche, :precioUnidad, :estado, :entregaProducto_id, :rendicionProducto_id)
    end
end
