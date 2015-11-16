class ConyuguesController < ApplicationController
  before_action :set_conyugue, only: [:show, :edit, :update, :destroy]

  # GET /conyugues
  # GET /conyugues.json
  def index
    @conyugues = Conyugue.all
    if(params["palabra"]!=nil)
        @conyugues=Conyugue.where("(nombre || ' ' || apellido1 || ' ' || apellido2) =?", params["palabra"])    
    end
  end

  # GET /conyugues/1
  # GET /conyugues/1.json
  def show
  end

  # GET /conyugues/new
  def new
    @conyugue = Conyugue.new
    @id=(params[:id])
    @cities = City.all
    if(params["palabra"]!=nil)
        @ciudades=City.where("(nombre || ' ' || estado ) =?", params["palabra"])    
    end
    
  end

  # GET /conyugues/1/edit
  def edit
    @cities = City.all
    if(params["palabra"]!=nil)
        @ciudades=City.where("(nombre || ' ' || estado ) =?", params["palabra"])    
    end
  end

  # POST /conyugues
  # POST /conyugues.json
  def create
    @conyugue = Conyugue.new(conyugue_params)
    @conyugue.interno_id=params[:interno_id]
    @interno=Interno.find(params[:interno_id])
    @id=@conyugue.interno_id
    @conyugue.lugarNacimiento=(params[:palabra])
    

      if @conyugue.save
         flash[:success] = 'Conyugue fue creado exitosamente'
          redirect_to @interno 
      else
        render "new", :id => @conyugue.interno_id
        
      end
  
  end

  # PATCH/PUT /conyugues/1
  # PATCH/PUT /conyugues/1.json
  def update
    @conyugue.lugarNacimiento=(params[:palabra])
      if @conyugue.update(conyugue_params)
         flash[:success] = 'Conyugue fue creado exitosamente'
         redirect_to @conyugue 
      else
        render action: "edit"
      end
   
  end

  # DELETE /conyugues/1
  # DELETE /conyugues/1.json
  def destroy
    @conyugue.destroy
    respond_to do |format|
      format.html { redirect_to internos_path, notice: 'Conyugue fue borrado satisfactoriamente.' }
      format.json { head :no_content }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conyugue
      @conyugue = Conyugue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conyugue_params
      params.require(:conyugue).permit(:estado, :nombre, :apellido1, :apellido2, :ci, :lugarNacimiento, :fechaNacimiento, :telefono, :direccion)
    end
end
