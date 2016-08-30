class VentaunidadsController < ApplicationController
  load_and_authorize_resource
  before_action :set_ventaunidad, only: [:show, :edit, :update, :destroy]

  # GET /ventaunidads
  # GET /ventaunidads.json
  def index
    @ventaunidads = Ventaunidad.all
    @ventaunidads = Ventaunidad.search(params[:search]).paginate(:per_page => 20, :page => params[:page])
  end

  def import
    Ventaunidad.import(params[:file])
    redirect_to "/ventaunidads", notice: "Sales imported."
  end

  # GET /ventaunidads/1
  # GET /ventaunidads/1.json
  def show
  end

  # GET /ventaunidads/new
  def new
    @ventaunidad = Ventaunidad.new
  end

  # GET /ventaunidads/1/edit
  def edit
  end

  # POST /ventaunidads
  # POST /ventaunidads.json
  def create
    @ventaunidad = Ventaunidad.new(ventaunidad_params)

    respond_to do |format|
      if @ventaunidad.save
        format.html { redirect_to @ventaunidad, notice: 'Ventaunidad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ventaunidad }
      else
        format.html { render action: 'new' }
        format.json { render json: @ventaunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ventaunidads/1
  # PATCH/PUT /ventaunidads/1.json
  def update
    respond_to do |format|
      if @ventaunidad.update(ventaunidad_params)
        format.html { redirect_to @ventaunidad, notice: 'Ventaunidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ventaunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventaunidads/1
  # DELETE /ventaunidads/1.json
  def destroy
    @ventaunidad.destroy
    respond_to do |format|
      format.html { redirect_to ventaunidads_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def sort_column
      Ventaunidad.column_names.include?(params[:sort]) ? params[:sort] : "mes"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    def set_ventaunidad
      @ventaunidad = Ventaunidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventaunidad_params
      params.require(:ventaunidad).permit(:mes, :valor)
    end
end
