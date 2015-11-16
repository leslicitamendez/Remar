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
    @rendicion_id=(params[:rendicion_id])
    @entregaprod=Entregaprod.find(params[:id])
  end

  # GET /ventaprods/1/edit
  def edit
    @entregaprod=Entregaprod.find(params[:id])
  end

  # POST /ventaprods
  # POST /ventaprods.json
  def create
    begin
      @ventaprod = Ventaprod.new(ventaprod_params)
      @ren = Rendicionprod.find(params[:rendicion_id])
      @entregaprod=Entregaprod.find(params[:id])
      @ventaprod.entregaprod_id=params[:id]
      @ventaprod.rendicionprod_id=params[:rendicion_id]
      if @entregaprod.cantidad.to_i- @ren.cantidad.to_i < @ventaprod.cantidad.to_i
        flash[:warning] = 'No puede vender mas producto del rendido' 
        redirect_to '/entregaprods/'+params[:id]      
      elsif @ventaprod.save
        flash[:success] = 'Venta producto creado exitosamente'
        redirect_to '/entregaprods/'+params[:id]
      else
        render action: "new"
      end      
    rescue Exception => e
      redirect_to '/entregaprods/'+params[:id]
    end
  end

  # PATCH/PUT /ventaprods/1
  # PATCH/PUT /ventaprods/1.json
  def update
    begin
      @ren = Rendicionprod.find(@ventaprod.rendicionprod_id)
      @entregaprod=Entregaprod.find(@ventaprod.entregaprod_id)
      @actu=params[:ventaprod]
      @ingreso=@ventaprod.ingreso 

      if @entregaprod.cantidad.to_i- @ren.cantidad.to_i < @actu[:cantidad].to_i
        flash[:warning] = 'No puede vender mas producto del rendido' 
        redirect_to '/entregaprods/'+@ventaprod.entregaprod_id.to_s
      elsif @ventaprod.update(ventaprod_params)
        if @ingreso!=nil
          @ingreso.montoBs = @actu[:cantidad].to_i*@actu[:precioUnidad].to_i
          @ingreso.save
        end
        flash[:success] ='Venta producto actualizado exitosamente' 
        redirect_to '/entregaprods/'+@ventaprod.entregaprod_id.to_s
      else
        render action: "edit"
      end      
    rescue Exception => e
      redirect_to '/entregaprods/'+@ventaprod.entregaprod_id.to_s
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
