class RecepcionDonativosController < ApplicationController
  before_action :set_recepcion_donativo, only: [:show, :edit, :update, :destroy]

  # GET /recepcion_donativos
  # GET /recepcion_donativos.json
  def index
    #@recepcion_donativos = RecepcionDonativo.all.paginate(page: params[:page], per_page: 5).order('fecha DESC')
    #@palabra = ''
    #@palabra = params[:palabra].to_date
    #@fec=Date.parse("@palabra.to_s")
    if params[:palabra2]==nil ||  params[:palabra2]== ''
      params[:palabra2]=Date.today.to_s
    end
    if params[:palabra] &&  params[:palabra]!= '' 
      begin
        @recepcion_donativos = RecepcionDonativo.order("fecha DESC").where("fecha >=? AND fecha <=?", params[:palabra].to_date, params[:palabra2].to_date)
      rescue Exception => e
        flash[:success] = 'Por favor ingrese una fecha valida'
        params.delete :palabra
        redirect_to '/recepcion_donativos'
      end
    else
      begin
        @recepcion_donativos = RecepcionDonativo.order("id DESC").where("estado = 'Pendiente'")
      rescue Exception => e
        flash[:success] = 'Por favor ingrese una fecha valida'
        params.delete :palabra2
        redirect_to '/recepcion_donativos'
      end
    end
  end

  # GET /recepcion_donativos/1
  # GET /recepcion_donativos/1.json
  def show
  end

  # GET /recepcion_donativos/new
  def new
    @recepcion_donativo = RecepcionDonativo.new
  end

  # GET /recepcion_donativos/1/edit
  def edit
  end

  # POST /recepcion_donativos
  # POST /recepcion_donativos.json
  def create
    @recepcion_donativo = RecepcionDonativo.new(recepcion_donativo_params)
    @recepcion_donativo.estado='Pendiente'
    @recepcion_donativo.fecha=Date.today
    if @recepcion_donativo.save
      flash[:success] = 'Recepcion donativo creado exitosamente' 
      redirect_to '/recepcion_donativos'
    else
      render action: "new"
    end
  end

  # PATCH/PUT /recepcion_donativos/1
  # PATCH/PUT /recepcion_donativos/1.json
  def update
      if @recepcion_donativo.update(recepcion_donativo_params)
        flash[:success] = 'Recepcion donativo actualizado exitosamente' 
        redirect_to '/recepcion_donativos'
      else
        render action: "edit"
      end
  end

  # DELETE /recepcion_donativos/1
  # DELETE /recepcion_donativos/1.json
  def destroy
    @recepcion_donativo.destroy
    respond_to do |format|
      format.html { redirect_to recepcion_donativos_url, notice: 'Recepcion donativo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepcion_donativo
      @recepcion_donativo = RecepcionDonativo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepcion_donativo_params
      params.require(:recepcion_donativo).permit(:fecha, :nombreDonante, :articulo, :precio, :descripcion, :id_voluntario)
    end
end
