class CitaController < ApplicationController
  before_action :set_citum, only: [:show, :edit, :update, :destroy]

  # GET /cita
  # GET /cita.json
  def index
  #  if params[:palabra2]==nil ||  params[:palabra2]== ''
   #   params[:palabra2]=Date.today.to_s 
   # end
    begin
      @page = params[:page]
      @palabra2 = params[:palabra2]
      @palabra = params[:palabra]
      if params[:estado] &&  params[:estado]!= ''
        @cita = Citum.order("fecha ASC, hora ASC").where("estado LIKE?", '%'+params[:estado]+'%')
      else
         @cita=Citum.all
      end 
      if params[:palabra] &&  params[:palabra]!= '' 
        @cita = @cita.order("fecha ASC, hora ASC").where("fecha >=?", params[:palabra].to_date)
      end
      if params[:palabra2] &&  params[:palabra2]!= '' 
        @cita = @cita.order("fecha ASC, hora ASC").where("fecha <=?", params[:palabra2].to_date)
      end           
    rescue Exception => e
      flash[:success] = 'Por favor ingrese una fecha valida'
      params.delete :palabra2
      redirect_to '/cita'      
    end
    #@cita = Citum.order("fecha ASC, hora ASC").where("fecha >=? AND estado!='Cancelada'", Date.today)
  end

  # GET /cita/1
  # GET /cita/1.json
  def show
  end

  def enviar
  end

  # GET /cita/new
  def new
    @citum = Citum.new
  end

  # GET /cita/1/edit
  def edit
  end

  # POST /cita
  # POST /cita.json
  def create
    begin
      @citum = Citum.new(citum_params)
      @citum.estado='Pendiente'
      if @citum.save
        flash[:success] = 'Cita creada exitosamente' 
        redirect_to '/cita'
      else
        render action: "new"
      end
    rescue Exception => e
      
    end
  end

  # PATCH/PUT /cita/1
  # PATCH/PUT /cita/1.json
  def update
    begin
      @editar=citum_params
      if @editar[:voluntario_id] != '' && @citum.estado=='Pendiente'
        @citum.estado='Enviado'
        @citum.save
      end
      if @citum.update(citum_params)
        flash[:success] =  'Cita actualizada exitosamente' 
        redirect_to '/cita'
      else
        render action: "new"
      end
    rescue Exception => e
      
    end
  end


  def otrapagina
    @cita=Citum.all

  end
  # DELETE /cita/1
  # DELETE /cita/1.json
  def destroy
    @citum.destroy
    respond_to do |format|
      format.html { redirect_to cita_url, notice: 'Citum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citum
      @citum = Citum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def citum_params
      params.require(:citum).permit(:fecha, :hora, :ubicación, :nombreDonante, :telefono, :voluntario_id, :descripcionDonacion, :estado)
    end
end
