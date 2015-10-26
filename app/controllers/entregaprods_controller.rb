class EntregaprodsController < ApplicationController
  before_action :set_entregaprod, only: [:show, :edit, :update, :destroy]

  # GET /entregaprods
  # GET /entregaprods.json
  def index
    #@entregaprods = Entregaprod.all.order("fecha DESC, hora DESC")
    @palabra = ''
    @palabra = params[:palabra]
    @entregaprods = Entregaprod.order("fecha DESC, hora DESC").where("fecha >=?", "%#{@palabra}%")
    @page = params[:page]  
  end

  # GET /entregaprods/1
  # GET /entregaprods/1.json

  def show
     @entregaprod=Entregaprod.find(params[:id])
    @rendicionprod=@entregaprod.rendicionprod
    @ventaprod=@entregaprod.ventaprod
  end

  # GET /entregaprods/new
  def new
    @entregaprod = Entregaprod.new
  end

  # GET /entregaprods/1/edit
  def edit
  end

  # POST /entregaprods
  # POST /entregaprods.json
  def create
    @entregaprod = Entregaprod.new(entregaprod_params)
    if @entregaprod.save
      flash[:success] =  'Entrega producto creado exitosamente' 
      redirect_to '/entregaprods/'+@entregaprod.id.to_s
    else
      render action: "new"
    end
  end

  # PATCH/PUT /entregaprods/1
  # PATCH/PUT /entregaprods/1.json
  def update
    if @entregaprod.update(entregaprod_params)
      flash[:success] =  'Entrega producto actualizado exitosamente' 
      redirect_to '/entregaprods/'+@entregaprod.id.to_s
    else
      render action: "new"
    end
  end

  # DELETE /entregaprods/1
  # DELETE /entregaprods/1.json
  def destroy
    @entregaprod.destroy
    respond_to do |format|
      format.html { redirect_to entregaprods_url, notice: 'Entregaprod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entregaprod
      @entregaprod = Entregaprod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entregaprod_params
      params.require(:entregaprod).permit(:fecha, :hora, :cantidad, :observaciones, :estado, :voluntario_id, :product_id)
    end
end
