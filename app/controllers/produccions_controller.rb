class ProduccionsController < ApplicationController
  before_action :set_produccion, only: [:show, :edit, :update, :destroy]

  # GET /produccions
  # GET /produccions.json
  def index
    #@produccions = Produccion.all
    #@palabra = ''
    #@palabra = params[:palabra]
    #@produccions = Produccion.where("product_id LIKE ?", "%#{@palabra}%")
    @produccions = buscar(params[:palabra])
  end

  def buscar(producto)
    items = Array.new
    aux = Produccion.all
    if producto != "" && producto != nil
      aux.each do |item|
        if (item.correspondeAProducto(producto))
          items.push(item)
        end
      end
      else
        items = aux
      end
      return items
  end

  # GET /produccions/1
  # GET /produccions/1.json

  def activo
    @produccion.activo
      respond_to do |format|
      format.html { redirect_to produccions_url }
      format.json { head :no_content }
    end
  end

  def show
  end

  # GET /produccions/new
  def new
    @produccion = Produccion.new
    @producto = Product.find_by_id(:product_id)
    @produccion.product = @producto
  end

  # GET /produccions/1/edit
  def edit
  end

  # POST /produccions
  # POST /produccions.json
  def create
    @produccion = Produccion.new(produccion_params)
    @produccion.estado = 'Activo'
    @stock = Stock.find_by product_id: @produccion.product_id 
      if @produccion.save
        if @stock
          @stock.cantidad += @produccion.cantidad.to_i
          @stock.save
        end
        flash[:success] = @stock.cantidad.to_s+'Produccion creada exitosamente'
        redirect_to '/produccions'
      else
        render action: "new"
      end
  end

  # PATCH/PUT /produccions/1
  # PATCH/PUT /produccions/1.json
  def update
    @product = Produccion.find(params[:id])
      if @produccion.update(produccion_params)
        flash[:success] = "Produccion actualizada exitosamente"
        redirect_to '/produccions'
      else
        render action: "edit"
      end
  end

  # DELETE /produccions/1
  # DELETE /produccions/1.json
  def destroy
    @produccion.destroy
    respond_to do |format|
      format.html { redirect_to produccions_url, notice: 'Produccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produccion
      @produccion = Produccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produccion_params
      params.require(:produccion).permit(:estado, :fecha_produccion, :fecha_vencimiento, :product_id, :cantidad)
    end
end
