class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
    @id=(params[:id])
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    @contact.interno_id=params[:interno_id]
    
      if @contact.save
        flash[:success] = 'Referencia fue creado exitosamente'
        redirect_to  @contact 
      else
        render action: "new"
      end
    
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
  
      if @contact.update(contact_params)
        flash[:success] = 'Referencia fue actualizado exitosamente'
        redirect_to  @contact 
      else
        render action: "edit"
      end
  
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Referencia se borro satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:sexo, :nombre, :apellido1, :apellido2, :ci, :telefono, :direccion)
    end
end
