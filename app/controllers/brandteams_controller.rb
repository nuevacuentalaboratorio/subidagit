class BrandteamsController < ApplicationController
  load_and_authorize_resource
  before_action :set_brandteam, only: [:show, :edit, :update, :destroy]

  # GET /brandteams
  # GET /brandteams.json
  def index
    @brandteams = Brandteam.all
  end

  # GET /brandteams/1
  # GET /brandteams/1.json
  def show
  end

  # GET /brandteams/new
  def new
    @brandteam = Brandteam.new
  end

  # GET /brandteams/1/edit
  def edit
  end

  # POST /brandteams
  # POST /brandteams.json
  def create
    @brandteam = Brandteam.new(brandteam_params)

    respond_to do |format|
      if @brandteam.save
        format.html { redirect_to @brandteam, notice: 'Brandteam was successfully created.' }
        format.json { render action: 'show', status: :created, location: @brandteam }
      else
        format.html { render action: 'new' }
        format.json { render json: @brandteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brandteams/1
  # PATCH/PUT /brandteams/1.json
  def update
    respond_to do |format|
      if @brandteam.update(brandteam_params)
        format.html { redirect_to @brandteam, notice: 'Brandteam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @brandteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brandteams/1
  # DELETE /brandteams/1.json
  def destroy
    @brandteam.destroy
    respond_to do |format|
      format.html { redirect_to brandteams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brandteam
      @brandteam = Brandteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brandteam_params
      params.require(:brandteam).permit(:nombre, :cargo, :empresa, :telefono, :email, :foto)
    end
end
