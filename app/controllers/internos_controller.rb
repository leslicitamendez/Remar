class InternosController < ApplicationController
  before_action :set_interno, only: [:show, :edit, :update, :destroy]

  # GET /internos
  # GET /internos.json
  def index
    @internos = Interno.all
  end

  # GET /internos/1
  # GET /internos/1.json
  def show
    @interno=Interno.find(params[:id])
    @conyugue=@interno.conyugue

    
  end

  # GET /internos/new
  def new
    @interno = Interno.new
  end

  # GET /internos/1/edit
  def edit
  end

  # POST /internos
  # POST /internos.json
  def create
    @interno = Interno.new(interno_params)

    respond_to do |format|
      if @interno.save
        format.html { redirect_to @interno, notice: 'Interno was successfully created.' }
        format.json { render :show, status: :created, location: @interno }
      else
        format.html { render :new }
        format.json { render json: @interno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internos/1
  # PATCH/PUT /internos/1.json
  def update
    respond_to do |format|
      if @interno.update(interno_params)
        format.html { redirect_to @interno, notice: 'Interno was successfully updated.' }
        format.json { render :show, status: :ok, location: @interno }
      else
        format.html { render :edit }
        format.json { render json: @interno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internos/1
  # DELETE /internos/1.json
  def destroy
    @interno.destroy
    respond_to do |format|
      format.html { redirect_to internos_url, notice: 'Interno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interno
      @interno = Interno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interno_params
      params.require(:interno).permit(:nombre, :apellido1, :apellido2, :sexo, :ci, :estadoCivil, :direccion, :zona, :telefono, :fechaNacimiento, :lugarNacimiento, :estudios, :profesion, :oficio, :fechaIngreso)
    end
end
