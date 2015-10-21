class AvaluoDonativosController < ApplicationController
  before_action :set_avaluo_donativo, only: [:show, :edit, :update, :destroy]

  # GET /avaluo_donativos
  # GET /avaluo_donativos.json
  def index
    @avaluo_donativos = AvaluoDonativo.all
  end

  # GET /avaluo_donativos/1
  # GET /avaluo_donativos/1.json
  def show
  end

  # GET /avaluo_donativos/new
  def new
    @avaluo_donativo = AvaluoDonativo.new
  end

  # GET /avaluo_donativos/1/edit
  def edit
  end

  # POST /avaluo_donativos
  # POST /avaluo_donativos.json
  def create
    @avaluo_donativo = AvaluoDonativo.new(avaluo_donativo_params)

    respond_to do |format|
      if @avaluo_donativo.save
        format.html { redirect_to @avaluo_donativo, notice: 'Avaluo donativo was successfully created.' }
        format.json { render :show, status: :created, location: @avaluo_donativo }
      else
        format.html { render :new }
        format.json { render json: @avaluo_donativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaluo_donativos/1
  # PATCH/PUT /avaluo_donativos/1.json
  def update
    respond_to do |format|
      if @avaluo_donativo.update(avaluo_donativo_params)
        format.html { redirect_to @avaluo_donativo, notice: 'Avaluo donativo was successfully updated.' }
        format.json { render :show, status: :ok, location: @avaluo_donativo }
      else
        format.html { render :edit }
        format.json { render json: @avaluo_donativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaluo_donativos/1
  # DELETE /avaluo_donativos/1.json
  def destroy
    @avaluo_donativo.destroy
    respond_to do |format|
      format.html { redirect_to avaluo_donativos_url, notice: 'Avaluo donativo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaluo_donativo
      @avaluo_donativo = AvaluoDonativo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avaluo_donativo_params
      params.require(:avaluo_donativo).permit(:montoBs, :observacion)
    end
end
