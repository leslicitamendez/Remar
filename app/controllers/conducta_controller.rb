class ConductaController < ApplicationController
  before_action :set_conductum, only: [:show, :edit, :update, :destroy]

  # GET /conducta
  # GET /conducta.json
  def index
    @conducta = Conductum.all
  end

  # GET /conducta/1
  # GET /conducta/1.json
  def show
  end

  # GET /conducta/new
  def new
    @conductum = Conductum.new
    @id=(params[:id])
  end

  # GET /conducta/1/edit
  def edit
  end

  # POST /conducta
  # POST /conducta.json
  def create
    @conductum = Conductum.new(conductum_params)
    @conductum.interno_id=params[:interno_id]

    @id=@conductum.interno_id
      if @conductum.save
        flash[:success] = 'Conducta fue creado exitosamente'
        redirect_to @conductum
      else
        render action: "new"
      end
    
    
  end

  # PATCH/PUT /conducta/1
  # PATCH/PUT /conducta/1.json
  def update
    
      if @conductum.update(conductum_params)
        flash[:success] = 'Conducta fue actualizado exitosamente'
        redirect_to @conductum
      else
        render action: "edit"
      end
 
  end

  # DELETE /conducta/1
  # DELETE /conducta/1.json
  def destroy
    @conductum.destroy
    respond_to do |format|
      format.html { redirect_to conducta_url, notice: 'Conductum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conductum
      @conductum = Conductum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conductum_params
      params.require(:conductum).permit(:estado, :fecha, :descripcion, :tipoConducta)
    end
end
