class RecepcionDonativosController < ApplicationController
  before_action :set_recepcion_donativo, only: [:show, :edit, :update, :destroy]

  # GET /recepcion_donativos
  # GET /recepcion_donativos.json
  def index
    @recepcion_donativos = RecepcionDonativo.all
  end

  # GET /recepcion_donativos/1
  # GET /recepcion_donativos/1.json
  def show
  end

  # GET /recepcion_donativos/new
  def new
    @recepcion_donativo = RecepcionDonativo.new
  end

  # GET /recepcion_donativos/1/edit
  def edit
  end

  # POST /recepcion_donativos
  # POST /recepcion_donativos.json
  def create
    @recepcion_donativo = RecepcionDonativo.new(recepcion_donativo_params)

    respond_to do |format|
      if @recepcion_donativo.save
        format.html { redirect_to @recepcion_donativo, notice: 'Recepcion donativo was successfully created.' }
        format.json { render :show, status: :created, location: @recepcion_donativo }
      else
        format.html { render :new }
        format.json { render json: @recepcion_donativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepcion_donativos/1
  # PATCH/PUT /recepcion_donativos/1.json
  def update
    respond_to do |format|
      if @recepcion_donativo.update(recepcion_donativo_params)
        format.html { redirect_to @recepcion_donativo, notice: 'Recepcion donativo was successfully updated.' }
        format.json { render :show, status: :ok, location: @recepcion_donativo }
      else
        format.html { render :edit }
        format.json { render json: @recepcion_donativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepcion_donativos/1
  # DELETE /recepcion_donativos/1.json
  def destroy
    @recepcion_donativo.destroy
    respond_to do |format|
      format.html { redirect_to recepcion_donativos_url, notice: 'Recepcion donativo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepcion_donativo
      @recepcion_donativo = RecepcionDonativo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepcion_donativo_params
      params.require(:recepcion_donativo).permit(:fecha, :nombreDonante, :articulo, :cantidad, :descripcion, :id_voluntario)
    end
end
