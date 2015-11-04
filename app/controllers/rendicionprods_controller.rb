class RendicionprodsController < ApplicationController
  before_action :set_rendicionprod, only: [:show, :edit, :update, :destroy]

  # GET /rendicionprods
  # GET /rendicionprods.json
  def index
    @rendicionprods = Rendicionprod.all
  end

  # GET /rendicionprods/1
  # GET /rendicionprods/1.json
  def show
  end

  # GET /rendicionprods/new
  def new
    @rendicionprod = Rendicionprod.new
    @id=(params[:id])
  end

  # GET /rendicionprods/1/edit
  def edit
  end

  # POST /rendicionprods
  # POST /rendicionprods.json
  def create
    @rendicionprod = Rendicionprod.new(rendicionprod_params)
    begin
      @entregaprod=Entregaprod.find(params[:id])
      @rendicionprod.entregaprod_id=params[:id]
      if @entregaprod.cantidad.to_i < @rendicionprod.cantidad.to_i
        flash[:warning] = 'No puede devolver mas producto del entregado' 
        redirect_to '/entregaprods/'+params[:id]     
      elsif @rendicionprod.save
        flash[:success] = 'Rendicion producto creado exitosamente' 
        redirect_to '/entregaprods/'+params[:id]
      else
        render action: "new"
      end
      
    rescue Exception => e
      redirect_to '/entregaprods/'+params[:id]
    end
    
  end

  # PATCH/PUT /rendicionprods/1
  # PATCH/PUT /rendicionprods/1.json
  def update
    begin
      @entregaprod=Entregaprod.find(@rendicionprod.entregaprod_id)
      @actu=params[:rendicionprod]
      if @entregaprod.cantidad.to_i < @actu[:cantidad].to_i
        flash[:warning] = 'No puede devolver mas producto del entregado' 
        redirect_to '/entregaprods/'+@rendicionprod.entregaprod_id.to_s
      elsif @rendicionprod.update(rendicionprod_params)
        flash[:success] ='Rendicion producto actualizado exitosamente' 
        redirect_to '/entregaprods/'+@rendicionprod.entregaprod_id.to_s
      else
        render action: "edit"
      end      
    rescue Exception => e
      redirect_to '/entregaprods/'+@rendicionprod.entregaprod_id.to_s
    end
    
  end

  # DELETE /rendicionprods/1
  # DELETE /rendicionprods/1.json
  def destroy
    @rendicionprod.destroy
    respond_to do |format|
      format.html { redirect_to rendicionprods_url, notice: 'Rendicionprod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rendicionprod
      @rendicionprod = Rendicionprod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rendicionprod_params
      params.require(:rendicionprod).permit(:fecha, :hora, :cantidad, :observaciones, :estado, :entregaprod_id)
    end
end
