class SeccionsController < ApplicationController
  before_action :set_seccion, only: [:show, :edit, :update, :destroy]

  # GET /seccions
  # GET /seccions.json
  def index
    @seccions = Seccion.all
  end

  # GET /seccions/1
  # GET /seccions/1.json
  def show
  end

  # GET /seccions/new
  def new
    @seccion = Seccion.new
  end

  # GET /seccions/1/edit
  def edit
  end

  # POST /seccions
  # POST /seccions.json
  def create
    @seccion = Seccion.new(seccion_params)

    respond_to do |format|
      if @seccion.save
        format.html { redirect_to @seccion, notice: 'Seccion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @seccion }
      else
        format.html { render action: 'new' }
        format.json { render json: @seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seccions/1
  # PATCH/PUT /seccions/1.json
  def update
    respond_to do |format|
      if @seccion.update(seccion_params)
        format.html { redirect_to @seccion, notice: 'Seccion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seccions/1
  # DELETE /seccions/1.json
  def destroy
    @seccion.destroy
    respond_to do |format|
      format.html { redirect_to seccions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seccion
      @seccion = Seccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seccion_params
      params.require(:seccion).permit(:nombre, :url)
    end
end
