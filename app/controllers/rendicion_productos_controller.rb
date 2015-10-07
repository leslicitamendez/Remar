class RendicionProductosController < ApplicationController
  before_action :set_rendicion_producto, only: [:show, :edit, :update, :destroy]

  # GET /rendicion_productos
  # GET /rendicion_productos.json
  def index
    @rendicion_productos = RendicionProducto.all
  end

  # GET /rendicion_productos/1
  # GET /rendicion_productos/1.json
  def show
  end

  # GET /rendicion_productos/new
  def new
    @rendicion_producto = RendicionProducto.new
  end

  # GET /rendicion_productos/1/edit
  def edit
  end

  # POST /rendicion_productos
  # POST /rendicion_productos.json
  def create
    @rendicion_producto = RendicionProducto.new(rendicion_producto_params)

    respond_to do |format|
      if @rendicion_producto.save
        format.html { redirect_to @rendicion_producto, notice: 'Rendicion producto was successfully created.' }
        format.json { render :show, status: :created, location: @rendicion_producto }
      else
        format.html { render :new }
        format.json { render json: @rendicion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rendicion_productos/1
  # PATCH/PUT /rendicion_productos/1.json
  def update
    respond_to do |format|
      if @rendicion_producto.update(rendicion_producto_params)
        format.html { redirect_to @rendicion_producto, notice: 'Rendicion producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @rendicion_producto }
      else
        format.html { render :edit }
        format.json { render json: @rendicion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rendicion_productos/1
  # DELETE /rendicion_productos/1.json
  def destroy
    @rendicion_producto.destroy
    respond_to do |format|
      format.html { redirect_to rendicion_productos_url, notice: 'Rendicion producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rendicion_producto
      @rendicion_producto = RendicionProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rendicion_producto_params
      params.require(:rendicion_producto).permit(:fecha, :hora, :cantidad, :observaciones, :estado, :Product_id, :Voluntario_id)
    end
end
