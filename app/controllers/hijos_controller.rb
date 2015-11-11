class HijosController < ApplicationController
  before_action :set_hijo, only: [:show, :edit, :update, :destroy]

  # GET /hijos
  # GET /hijos.json
  def index
    @hijos = Hijo.all
  end

  # GET /hijos/1
  # GET /hijos/1.json
  def show
  end

  # GET /hijos/new
  def new
    @hijo = Hijo.new
    @id=(params[:id])
    @cities = City.all
    if(params["palabra"]!=nil)
        @ciudades=City.where("(nombre || ' ' || estado ) =?", params["palabra"])    

    end
    
  end

  # GET /hijos/1/edit
  def edit
  end

  # POST /hijos
  # POST /hijos.json
  def create
    
    @hijo = Hijo.new(hijo_params)
    @hijo.interno_id=params[:interno_id]
    @hijo.lugarNacimiento=(params[:palabra])

  
    if ((DateTime.now-@hijo.fechaNacimiento).to_i<=6569)
      @hijo.estado=true
    end
      if @hijo.save
        flash[:success] = 'Hijo fue creado exitosamente'
        redirect_to @hijo
      else
        render action: "new"
      end
  end

  # PATCH/PUT /hijos/1
  # PATCH/PUT /hijos/1.json
  def update
    @hijo.lugarNacimiento=(params[:palabra])
      if @hijo.update(hijo_params)
        flash[:success] = 'Hijo fue actualizado exitosamente'
        redirect_to @hijo
      else
        render action: "edit"
      end
  
  end

  # DELETE /hijos/1
  # DELETE /hijos/1.json
  def destroy
    @hijo.destroy
    respond_to do |format|
      format.html { redirect_to hijos_url, notice: 'Hijo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hijo
      @hijo = Hijo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hijo_params
      params.require(:hijo).permit(:estado, :sexo, :nombre, :apellido1, :apellido2, :ci, :fechaNacimiento, :lugarNacimiento)
    end
end
