class DocumentosController < ApplicationController
  load_and_authorize_resource
  helper_method :sort_column, :sort_direction
  before_action :set_documento, only: [:show, :edit, :update, :destroy]

  # GET /documentos
  # GET /documentos.json
  def index
    @documentos = Documento.all
    @documentos = Documento.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
  end

  # GET /documentos/1
  # GET /documentos/1.json
  def show
  end

  # GET /documentos/new
  def new
    @documento = Documento.new
  end

  # GET /documentos/1/edit
  def edit
  end

  # POST /documentos
  # POST /documentos.json
  def create
    @documento = Documento.new(documento_params)

    respond_to do |format|
      if @documento.save
        format.html { redirect_to @documento, notice: 'Documento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @documento }
      else
        format.html { render action: 'new' }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentos/1
  # PATCH/PUT /documentos/1.json
  def update
    respond_to do |format|
      if @documento.update(documento_params)
        format.html { redirect_to @documento, notice: 'Documento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentos/1
  # DELETE /documentos/1.json
  def destroy
    @documento.destroy
    respond_to do |format|
      format.html { redirect_to documentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documento
      @documento = Documento.find(params[:id])
    end

  def sort_column
    Documento.column_names.include?(params[:sort]) ? params[:sort] : "nombre"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documento_params
      params.require(:documento).permit(:nombre, :autor, :archivo)
    end
end
