class VoluntariosController < ApplicationController
  before_action :set_voluntario, only: [:show, :edit, :update, :destroy]

  # GET /voluntarios
  # GET /voluntarios.json
  def index
    begin  
      @voluntarios = Voluntario.all
      @palabra = ''
        @palabra = params[:palabra]
      if(params["palabra"]!=nil)
          @voluntarios=@voluntarios.order("apellido1 ASC, apellido2 ASC, nombre ASC ").where("nombre LIKE ?  OR apellido1 LIKE ? OR apellido2 LIKE ?", "%#{@palabra}%" ,"%#{@palabra}%", "%#{@palabra}%")    
      end
      if(params["estado"]!=nil)
        @voluntarios=@voluntarios.order("apellido1 ASC, apellido2 ASC, nombre ASC ").where("estado=?", params[:estado])
      else
        @voluntarios=@voluntarios.order("apellido1 ASC, apellido2 ASC, nombre ASC ").where("estado=?", "Activo")
      end
      @page = params[:page]
    rescue Exception => e
      
    end
  end


  # GET /voluntarios/1
  # GET /voluntarios/1.json
  def show
  end

  # GET /voluntarios/new
  def new
    @voluntario = Voluntario.new
    
  end

  # GET /voluntarios/1/edit
  def edit
  end

  # POST /voluntarios
  # POST /voluntarios.json
  def create
    begin
      @voluntario = Voluntario.new(voluntario_params)
      if @Voluntario
      @Voluntario.estado='Activo'
      end
        if @voluntario.save
          flash[:success] = 'Voluntario creado exitosamente' 
          redirect_to '/voluntarios'
        else
          render action: "new"
        end
      rescue Exception => e
      
    end
  end

  # PATCH/PUT /voluntarios/1
  # PATCH/PUT /voluntarios/1.json
  def update
    begin    
      if @voluntario.update(voluntario_params)
         flash[:success] = 'Voluntario actualizado exitosamente' 
        redirect_to '/voluntarios'
      else
        render action: "edit"
      end  
    rescue Exception => e
      
    end
  end

  # DELETE /voluntarios/1
  # DELETE /voluntarios/1.json
  def destroy
    @voluntario.destroy
    respond_to do |format|
      format.html { redirect_to voluntarios_url, notice: 'Voluntario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntario
      @voluntario = Voluntario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voluntario_params
      params.require(:voluntario).permit(:nombre, :apellido1, :apellido2, :direccion, :NivelConfianza, :telefono, :ci, :sexo, :estado)
    end
    
end
