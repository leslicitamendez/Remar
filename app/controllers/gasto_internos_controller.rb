class GastoInternosController < ApplicationController
  before_action :set_gasto_interno, only: [:show, :edit, :update, :destroy]

  # GET /gasto_internos
  # GET /gasto_internos.json
  def index
    @gasto_internos = GastoInterno.all
  end

  # GET /gasto_internos/1
  # GET /gasto_internos/1.json
  def show
  end

  # GET /gasto_internos/new
  def new
    @gasto_interno = GastoInterno.new
  end

  # GET /gasto_internos/1/edit
  def edit
  end

  # POST /gasto_internos
  # POST /gasto_internos.json
  def create
    @gasto_interno = GastoInterno.new(gasto_interno_params)

    respond_to do |format|
      if @gasto_interno.save
        format.html { redirect_to @gasto_interno, notice: 'Gasto interno was successfully created.' }
        format.json { render :show, status: :created, location: @gasto_interno }
      else
        format.html { render :new }
        format.json { render json: @gasto_interno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gasto_internos/1
  # PATCH/PUT /gasto_internos/1.json
  def update
    respond_to do |format|
      if @gasto_interno.update(gasto_interno_params)
        format.html { redirect_to @gasto_interno, notice: 'Gasto interno was successfully updated.' }
        format.json { render :show, status: :ok, location: @gasto_interno }
      else
        format.html { render :edit }
        format.json { render json: @gasto_interno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gasto_internos/1
  # DELETE /gasto_internos/1.json
  def destroy
    @gasto_interno.destroy
    respond_to do |format|
      format.html { redirect_to gasto_internos_url, notice: 'Gasto interno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gasto_interno
      @gasto_interno = GastoInterno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gasto_interno_params
      params.require(:gasto_interno).permit(:fecha, :concepto, :descripcion, :monto, :interno_id)
    end
end
