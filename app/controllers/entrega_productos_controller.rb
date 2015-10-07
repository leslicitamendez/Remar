class EntregaProductosController < ApplicationController
  before_action :set_entrega_producto, only: [:show, :edit, :update, :destroy]

  # GET /entrega_productos
  # GET /entrega_productos.json
  def index
    @entrega_productos = EntregaProducto.all
  end

  # GET /entrega_productos/1
  # GET /entrega_productos/1.json
  def show
  end

  # GET /entrega_productos/new
  def new
    @entrega_producto = EntregaProducto.new
  end

  # GET /entrega_productos/1/edit
  def edit
  end

  # POST /entrega_productos
  # POST /entrega_productos.json
  def create
    @entrega_producto = EntregaProducto.new(entrega_producto_params)

    respond_to do |format|
      if @entrega_producto.save
        format.html { redirect_to @entrega_producto, notice: 'Entrega producto was successfully created.' }
        format.json { render :show, status: :created, location: @entrega_producto }
      else
        format.html { render :new }
        format.json { render json: @entrega_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entrega_productos/1
  # PATCH/PUT /entrega_productos/1.json
  def update
    respond_to do |format|
      if @entrega_producto.update(entrega_producto_params)
        format.html { redirect_to @entrega_producto, notice: 'Entrega producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @entrega_producto }
      else
        format.html { render :edit }
        format.json { render json: @entrega_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrega_productos/1
  # DELETE /entrega_productos/1.json
  def destroy
    @entrega_producto.destroy
    respond_to do |format|
      format.html { redirect_to entrega_productos_url, notice: 'Entrega producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrega_producto
      @entrega_producto = EntregaProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entrega_producto_params
      params.require(:entrega_producto).permit(:fecha, :hora, :cantidad, :estado, :product_id, :voluntario_id)
    end
end
