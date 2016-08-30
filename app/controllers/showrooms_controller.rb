class ShowroomsController < ApplicationController
  load_and_authorize_resource
  before_action :set_showroom, only: [:show, :edit, :update, :destroy]

  # GET /showrooms
  # GET /showrooms.json
  def index
    @showrooms = Showroom.all
  end

  # GET /showrooms/1
  # GET /showrooms/1.json
  def show
    @showpins = @showroom.showpins
    @archivofolders = @showroom.archivofolders
    @p = "?p=showroom&num="+params[:id]
  end

  # GET /showrooms/new
  def new
    @showroom = Showroom.new
  end

  # GET /showrooms/1/edit
  def edit
  end

  # POST /showrooms
  # POST /showrooms.json
  def create
    @showroom = Showroom.new(showroom_params)

    respond_to do |format|
      if @showroom.save
        format.html { redirect_to @showroom, notice: 'Showroom was successfully created.' }
        format.json { render action: 'show', status: :created, location: @showroom }
      else
        format.html { render action: 'new' }
        format.json { render json: @showroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showrooms/1
  # PATCH/PUT /showrooms/1.json
  def update
    respond_to do |format|
      if @showroom.update(showroom_params)
        format.html { redirect_to @showroom, notice: 'Showroom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @showroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showrooms/1
  # DELETE /showrooms/1.json
  def destroy
    @showroom.destroy
    respond_to do |format|
      format.html { redirect_to showrooms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showroom
      @showroom = Showroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showroom_params
      params.require(:showroom).permit(:descripcion, :portada, :modulo, :direccion, :horario, :telefono)
    end
end
