class EgresoInternosController < ApplicationController
  before_action :set_egreso_interno, only: [:show, :edit, :update, :destroy]

  # GET /egreso_internos
  # GET /egreso_internos.json
  def index
    #@egreso_internos = EgresoInterno.all
    #@palabra = ''
    #@palabra = params[:palabra]
    #@egreso_internos = EgresoInterno.where("interno_id LIKE ?", "%#{@palabra}%")
    @egreso_internos = buscar(params[:palabra])
  end

  def buscar(interno)
    items = Array.new
    aux = EgresoInterno.all
    if interno != "" && interno != nil
      aux.each do |item|
        if(item.correspondeAinterno(interno))
          items.push(item)
        end
      end
    else
      items = aux
    end
    return items
  end

  # GET /egreso_internos/1
  # GET /egreso_internos/1.json
  def show
  end

  def dinero_actual()
    @total=0
    @total_egreso=0
    @total_egreso_interno=0

    @ingresos= Ingreso.all
    @egresos=Egreso.all
    @egreso_internos=EgresoInterno.all

    @ingresos.each do |ingreso| 
      if (ingreso.montoBs != nil)
        @total += ingreso.montoBs
      end
    end

    @egresos.each do |egreso| 
      if (egreso.monto != nil)
        @total_egreso += egreso.monto
      end
    end
    
    @egreso_internos.each do |egreso_interno| 
      if (egreso_interno.monto != nil)
        @total_egreso_interno += egreso_interno.monto
      end
    end

    @total=@total-@total_egreso-@total_egreso_interno
    return @total
  end

  # GET /egreso_internos/new
  def new
    @egreso_interno = EgresoInterno.new
    # @interno = Interno.find_by_id(:interno_id)
    # @egreso_interno.interno = @interno
    @id=(params[:id])
    @total=dinero_actual
  end

  # GET /egreso_internos/1/edit
  def edit
  end

  # POST /egreso_internos
  # POST /egreso_internos.json
  def create
    @egreso_interno = EgresoInterno.new(egreso_interno_params)
    @egreso_interno.interno_id=params[:interno_id]
    @id = @egreso_interno.interno_id
    @total=dinero_actual
    
    if @egreso_interno.monto>@total
      flash[:warning] = 'El monto de egreso no puede ser mayor al monto total'
      render action: "new"
    else   
      if @egreso_interno.save
        flash[:success] = 'Egreso Interno creado exitosamente'
        redirect_to @egreso_interno
      else
        render action: "new"
      end
    end
  end

  # PATCH/PUT /egreso_internos/1
  # PATCH/PUT /egreso_internos/1.json
  def update
    @egreso_interno = EgresoInterno.find(params[:id])
    @total=dinero_actual
    if @egreso_interno.monto>@total
      flash[:warning] = 'El monto de egreso no puede ser mayor al monto actual'
      render action: "edit"
    else
      if @egreso_interno.update(egreso_interno_params)
        flash[:success] = "Egreso Interno actualizado exitosamente"
        redirect_to @egreso_interno
      else
        render action: "edit"
      end
    end
  end

  # DELETE /egreso_internos/1
  # DELETE /egreso_internos/1.json
  def destroy
    @egreso_interno.destroy
    respond_to do |format|
      format.html { redirect_to egreso_internos_url, notice: 'Egreso interno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egreso_interno
      @egreso_interno = EgresoInterno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egreso_interno_params
      params.require(:egreso_interno).permit(:concepto, :monto, :observaciones, :fecha, :interno_id, :egreso_id)
    end
end
