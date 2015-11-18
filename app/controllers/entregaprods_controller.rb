class EntregaprodsController < ApplicationController
  before_action :set_entregaprod, only: [:show, :edit, :update, :destroy]

  # GET /entregaprods
  # GET /entregaprods.json
  def index
    #@entregaprods = Entregaprod.all.order("fecha DESC, hora DESC")
    #@palabra = ''
    #@palabra = params[:palabra]
    #@entregaprods = Entregaprod.order("fecha DESC, hora DESC").where("fecha >=?", "%#{@palabra}%")
    @product=Product.all
    @page = params[:page]
    if params[:producto] &&  params[:producto]!= ''
      @entregaprods = Entregaprod.order("fecha DESC, hora DESC").where("product_id >=?", params[:producto])
      @nombre=Product.find(params[:producto])
    else
      @entregaprods = Entregaprod.all
    end 
    begin

      if params[:palabra] &&  params[:palabra]!= '' 
        if params[:palabra2]==nil ||  params[:palabra2]== ''
          @entregaprods = @entregaprods.order("fecha DESC, hora DESC").where("fecha >=?", params[:palabra].to_date)
        else
          @entregaprods = @entregaprods.order("fecha DESC, hora DESC").where("fecha >=? AND fecha <=?", params[:palabra].to_date, params[:palabra2].to_date)
        end
      else
        @entregaprods = @entregaprods.order("fecha DESC, hora DESC").where("fecha =?", Date.today)
      end       
    rescue Exception => e
      flash[:success] = 'Por favor ingrese una fecha valida'
      params.delete :palabra2
      redirect_to '/entregaprods'      
    end 
  end

  # GET /entregaprods/1
  # GET /entregaprods/1.json

  def show
     @entregaprod=Entregaprod.find(params[:id])
    @rendicionprod=@entregaprod.rendicionprod
    @ventaprod=@entregaprod.ventaprod
    @ingreso=@entregaprod.ingreso
  end

  # GET /entregaprods/new
  def new
    @entregaprod = Entregaprod.new
    @voluntarios = Voluntario.all
    @productos = Product.all
    @stockz=Stock.all

    if @voluntarios.length == 0
      flash[:success] =  'Por favor Registre un Voluntario antes de continuar' 
      redirect_to '/voluntarios'      
    elsif @productos.length == 0
      flash[:success] =  'Por favor Registre un Producto antes de continuar' 
      redirect_to '/products'      
    end
    # respond_to do |format|
    #   msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
    #   format.json  { render :json => msg } # don't do msg.to_json
    # end
  end

  # GET /entregaprods/1/edit
  def edit
    begin
      @stockz=Stock.all
    rescue Exception => e
      redirect_to '/entregaprods'
    end
  end

  # POST /entregaprods
  # POST /entregaprods.json
  def create
    begin
      
    @stockz=Stock.all
    @entregaprod = Entregaprod.new(entregaprod_params)
    @stock = Stock.find_by product_id: @entregaprod.product_id
    if @stock==nil
      @stock=Stock.new()
      @stock.product_id=@entregaprod.product_id
      @stock.cantidad=0
      @stock.save
    end
    if @entregaprod.cantidad.to_i > @stock.cantidad.to_i
        flash[:warning] = 'No puede entregar mas del producto existente' 
        render action: "new"
    elsif @entregaprod.save
      @stock.cantidad -= @entregaprod.cantidad
      @stock.save
      flash[:success] =  'Entrega producto creado exitosamente' 
      redirect_to '/entregaprods/'+@entregaprod.id.to_s
    else
      render action: "new"
    end
    rescue Exception => e
      redirect_to '/entregaprods/new'
    end
  end

  # PATCH/PUT /entregaprods/1
  # PATCH/PUT /entregaprods/1.json
  def update
    @stockz=Stock.all
    @stock = Stock.find_by product_id: @entregaprod.product_id
    @actu = params[:entregaprod]
    if @actu[:product_id].to_i == @entregaprod.product_id.to_i
      @editar = @actu[:cantidad].to_i - @entregaprod.cantidad.to_i
      if @editar > 0
        if @editar <= @stock.cantidad.to_i
          @stock.cantidad -=@editar
          if @entregaprod.update(entregaprod_params) && @stock.save
            flash[:success] =  'Entrega producto actualizado exitosamente'
            redirect_to '/entregaprods/'+@entregaprod.id.to_s
          else
            render action: "new"
          end
        else
          flash[:warning] = 'No puede entregar mas del producto existente'
          render action: "edit"
        end
      else
        @stock.cantidad -=@editar
        if @entregaprod.update(entregaprod_params) && @stock.save
          flash[:success] =  'Entrega producto actualizado exitosamente' 
          redirect_to '/entregaprods/'+@entregaprod.id.to_s
        else
          render action: "new"
        end
      end
    else
      @stock2 = Stock.find_by product_id: @actu[:product_id]
      if @actu[:cantidad].to_i <= @stock2.cantidad.to_i
        @stock.cantidad += @entregaprod.cantidad.to_i
        @stock2.cantidad -= @actu[:cantidad].to_i
        if @entregaprod.update(entregaprod_params) && @stock.save && @stock2.save
          flash[:success] =  'Entrega producto actualizado exitosamente'
          redirect_to '/entregaprods/'+@entregaprod.id.to_s
        else
          render action: "new"
        end
      else
        flash[:warning] = 'No puede entregar mas del producto existente'
        render action: "edit"
      end
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
