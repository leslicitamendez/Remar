class RehabsController < ApplicationController
  before_action :set_rehab, only: [:show, :edit, :update, :destroy]

  # GET /rehabs
  # GET /rehabs.json
  def index
    @rehabs = Rehab.all
  end

  # GET /rehabs/1
  # GET /rehabs/1.json
  def show
  end

  # GET /rehabs/new
  def new
    @rehab = Rehab.new
  end

  # GET /rehabs/1/edit
  def edit
  end

  # POST /rehabs
  # POST /rehabs.json
  def create
    @rehab = Rehab.new(rehab_params)

    respond_to do |format|
      if @rehab.save
        format.html { redirect_to @rehab, notice: 'Rehabilitacion fue creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @rehab }
      else
        format.html { render :new }
        format.json { render json: @rehab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rehabs/1
  # PATCH/PUT /rehabs/1.json
  def update
    respond_to do |format|
      if @rehab.update(rehab_params)
        format.html { redirect_to @rehab, notice: 'Rehabilitacion fue actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @rehab }
      else
        format.html { render :edit }
        format.json { render json: @rehab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rehabs/1
  # DELETE /rehabs/1.json
  def destroy
    @rehab.destroy
    respond_to do |format|
      format.html { redirect_to rehabs_url, notice: 'Rehab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rehab
      @rehab = Rehab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rehab_params
      params.require(:rehab).permit(:enfermedades, :causaInternacion, :tiempoConsumo, :centroAnterior, :nombreCentre, :tiempoEstancia, :motivoRetiro, :observaciones, :interno_id)
    end
end
