class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @palabra=params[:palabra]
    if params[:palabra] && params[:palabra]!=''
      @products = Product.paginate(:page => params[:page]).where("name LIKE ?", "%#{@palabra}%")
    else
      @products = Product.all.order("name ASC").paginate(:per_page => 4, :page => params[:page])
    end

    if params[:estado] && params[:estado]!=''
      @products = Product.paginate(:page => params[:page], :per_page => 4).where("state=?", params[:estado])
    end
  end

  # GET /products/1
  # GET /products/1.json

  def activo
    @product.activo
      respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  def show
    #@product = Product.find_by_id(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @producto=Product.all
    @tam=1+@producto.size
    @product.code=(@product.name[0,5]).upcase+@tam.to_s
    @product.state = 'Activo'

    @stock = Stock.new
    if @product.save
        @stock.product_id=@product.id
        @stock.cantidad=0
        @stock.save
      flash[:success] = 'Producto creado exitosamente'
      redirect_to '/products'
    else
      render action: "new"
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @product = Product.find(params[:id])
      if @product.update(product_params)
        flash[:success] = "Producto actualizado exitosamente"
        redirect_to '/products'
      else
        render action: "edit"
      end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:code, :name, :description, :state, :unity, :price)
    end
end
