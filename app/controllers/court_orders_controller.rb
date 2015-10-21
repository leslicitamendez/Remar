class CourtOrdersController < ApplicationController
  before_action :set_court_order, only: [:show, :edit, :update, :destroy]

  # GET /court_orders
  # GET /court_orders.json
  def index
    @court_orders = CourtOrder.all
  end

  # GET /court_orders/1
  # GET /court_orders/1.json
  def show
  end

  # GET /court_orders/new
  def new
    @court_order = CourtOrder.new
    @id=(params[:id])
  end

  # GET /court_orders/1/edit
  def edit
  end

  # POST /court_orders
  # POST /court_orders.json
  def create
    @court_order = CourtOrder.new(court_order_params)
    @court_order.interno_id=params[:interno_id]

    respond_to do |format|
      if @court_order.save
        format.html { redirect_to @court_order, notice: 'Orden Judicial creada correctamente.' }
        format.json { render :show, status: :created, location: @court_order }
      else
        format.html { render :new }
        format.json { render json: @court_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /court_orders/1
  # PATCH/PUT /court_orders/1.json
  def update
    respond_to do |format|
      if @court_order.update(court_order_params)
        format.html { redirect_to @court_order, notice: 'Se actualizo correctamente Orden Judicial.' }
        format.json { render :show, status: :ok, location: @court_order }
      else
        format.html { render :edit }
        format.json { render json: @court_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /court_orders/1
  # DELETE /court_orders/1.json
  def destroy
    @court_order.destroy
    respond_to do |format|
      format.html { redirect_to court_orders_url, notice: 'Se borro orden Judicial.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_court_order
      @court_order = CourtOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def court_order_params
      params.require(:court_order).permit(:descripcion, :estado, :interno_id)
    end
end
