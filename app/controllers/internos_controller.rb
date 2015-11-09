class InternosController < ApplicationController
  before_action :set_interno, only: [:show, :edit, :update, :destroy]

  # GET /internos
  # GET /internos.json
  def index
    @internos = Interno.all
    if(params["palabra"]!=nil)
        @internos=Interno.where("(nombre || ' ' || apellido1 || ' ' || apellido2) =?", params["palabra"])    
    end

  end

  # GET /internos/1
  # GET /internos/1.json
  def show
    @interno=Interno.find(params[:id])
    @conyugue=@interno.conyugue

    @hijos=@interno.hijos
    @conducta=@interno.conducta
    @contact=@interno.contact
    @court_orders=@interno.court_orders
    @rehabs=@interno.rehabs

    @indisciplina = @interno.conducta.where(:tipoConducta => 'Indisciplina' ) 
    @robo = @interno.conducta.where(:tipoConducta => 'Robo' ) 
    @agresion = @interno.conducta.where(:tipoConducta => 'Agresion' ) 

   


    
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

    
      if @interno.save
        flash[:success] = 'Interno fue creado exitosamente'
        redirect_to  @interno
      else
        render action: "new"
      end
    
  end

  # PATCH/PUT /internos/1
  # PATCH/PUT /internos/1.json
  def update
      if @interno.update(interno_params)
        flash[:success] = "Interno actualizado exitosamente"
        redirect_to  @interno
      else
        render action: "edit"
      end
  end

  # DELETE /internos/1
  # DELETE /internos/1.json
  def destroy
    @interno.destroy
    respond_to do |format|
      format.html { redirect_to internos_url, notice: 'Interno fue borrado exitosamente.' }
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
