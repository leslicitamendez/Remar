class IngresosController < ApplicationController
  before_action :set_ingreso, only: [:show, :edit, :update, :destroy]

  # GET /ingresos
  # GET /ingresos.json
  def index
    @page = params[:page]
    @palabra2 = params[:palabra2]
    @palabra = params[:palabra]
    if params[:palabra2]==nil ||  params[:palabra2]== ''
      params[:palabra2]=Date.today.to_s
    end
    if params[:palabra] &&  params[:palabra]!= '' 
      begin
        @ingresos = Ingreso.order("fecha DESC").where("fecha >=? AND fecha <=?", params[:palabra].to_date, params[:palabra2].to_date)
      rescue Exception => e
        flash[:success] = 'Por favor ingrese una fecha valida'
        params.delete :palabra
        redirect_to '/ingresos'
      end
    else
      begin
        @ingresos = Ingreso.order("fecha DESC").where("fecha =?", Date.today)
      rescue Exception => e
        flash[:success] = 'Por favor ingrese una fecha valida'
        params.delete :palabra2
        redirect_to '/ingresos'
      end
    end
    @total=@ingresos.sum(:montoBs)
  end

  # GET /ingresos/1
  # GET /ingresos/1.json
  def show
  end

  # GET /ingresos/new
  def new
    begin
      @ingreso = Ingreso.new
      @id=(params[:id])    
      @donaid=(params[:donaid])
      if @donaid != nil && @donaid != '' && @donaid != '0'
        @donativo= RecepcionDonativo.find(@donaid)
      end
      if @id != nil && @id != '' && @id != '0'
        @ventaprod= Ventaprod.find(@id)
      end
    rescue Exception => e
      
    end
  end

  # GET /ingresos/1/edit
  def edit
  end

  # POST /ingresos
  # POST /ingresos.json
  def create
    begin
      @datos=params[:ingreso]
      @ingreso = Ingreso.new(ingreso_params)
      @id=(params[:id])
      @donaid=(params[:donaid])
      if @donaid != nil && @donaid != '' && @donaid != '0'
        @donativo= RecepcionDonativo.find(params[:donaid])
        @donativo.estado='Vendido'
        @ingreso.concepto='venta Donativo id='+@donativo.id.to_s+' articulo='+@donativo.articulo.to_s
        @ingreso.recepcionDonativo_id=params[:donaid]
        @ingreso.fecha=Date.today()
        if @ingreso.save && @donativo.save
          flash[:success] = 'Donativo vendido exitosamente' 
          redirect_to '/recepcion_donativos'
        else
          render action: "new"
        end
      elsif @id != nil && @id != '' && @id != '0'
        @ventaprod= Ventaprod.find(@id)
        @ingreso.ventaprod_id=params[:id]
        @ingreso.montoBs = @datos[:montoBs]
        #@ventaprod.estado='Vendido'
        @ingreso.concepto='venta Producto codigo='+@ventaprod.entregaprod.product.code.to_s+' nombre='+@ventaprod.entregaprod.product.name.to_s
        @ingreso.fecha=Date.today()
        if @ingreso.save 
          flash[:success] = 'Producto vendido exitosamente' 
          redirect_to '/entregaprods'
        else
          render action: "new"
        end
      else
        if @ingreso.save 
          flash[:success] = 'Ingreso registrado exitosamente' 
          redirect_to '/ingresos'
        else
          render action: "new"
        end
      end
    rescue Exception => e
      
    end
  end

  # PATCH/PUT /ingresos/1
  # PATCH/PUT /ingresos/1.json
  def update
    begin
      if @ingreso.update(ingreso_params)
        flash[:success] =  'Ingreso actualizado exitosamente' 
        redirect_to '/ingresos'
      else
        render action: "edit"
      end
    rescue Exception => e
      
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
      params.require(:ingreso).permit(:montoBs, :concepto, :fecha, :estado, :ventaprod_id, :recepcionDonativo_id)
    end
end
