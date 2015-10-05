class ConyuguesController < ApplicationController
  before_action :set_conyugue, only: [:show, :edit, :update, :destroy]

  # GET /conyugues
  # GET /conyugues.json
  def index
    @conyugues = Conyugue.all
    if(params["palabra"]!=nil)
        @conyugues=Conyugue.where("nombre=?  OR apellido1=? OR apellido2 =?", params["palabra"] , params["palabra"] , params["palabra"])    
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
  end

  # GET /conyugues/1/edit
  def edit
  end

  # POST /conyugues
  # POST /conyugues.json
  def create
    @conyugue = Conyugue.new(conyugue_params)
    @conyugue.interno_id=params[:interno_id]

    respond_to do |format|
      if @conyugue.save
        format.html { redirect_to @conyugue, notice: 'Conyugue was successfully created.' }
        format.json { render :show, status: :created, location: @conyugue }
      else
        format.html { render :new }
        format.json { render json: @conyugue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conyugues/1
  # PATCH/PUT /conyugues/1.json
  def update
    respond_to do |format|
      if @conyugue.update(conyugue_params)
        format.html { redirect_to @conyugue, notice: 'Conyugue was successfully updated.' }
        format.json { render :show, status: :ok, location: @conyugue }
      else
        format.html { render :edit }
        format.json { render json: @conyugue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conyugues/1
  # DELETE /conyugues/1.json
  def destroy
    @conyugue.destroy
    respond_to do |format|
      format.html { redirect_to conyugues_url, notice: 'Conyugue was successfully destroyed.' }
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
