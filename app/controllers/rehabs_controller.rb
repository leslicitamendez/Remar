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
    @id=(params[:id])
  end

  # GET /rehabs/1/edit
  def edit
  end

  # POST /rehabs
  # POST /rehabs.json
  def create
    @rehab = Rehab.new(rehab_params)
    @rehab.interno_id=params[:interno_id]
   
      if @rehab.save
        flash[:success] = 'Rehabilitacion fue creado exitosamente'
        redirect_to @rehab
      else
        render action: "new"
      end
   
  end

  # PATCH/PUT /rehabs/1
  # PATCH/PUT /rehabs/1.json
  def update
    
      if @rehab.update(rehab_params)
        flash[:success] = 'Rehabilitacion fue actualizada exitosamente'
        redirect_to @rehab
      else
        render action: "edit"
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
