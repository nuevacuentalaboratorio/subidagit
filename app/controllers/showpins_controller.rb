class ShowpinsController < ApplicationController
  load_and_authorize_resource
  before_action :set_showpin, only: [:show, :edit, :update, :destroy]

  # GET /showpins
  # GET /showpins.json
  def index
    @showpins = Showpin.all
  end

  # GET /showpins/1
  # GET /showpins/1.json
  def show
  end

  # GET /showpins/new
  def new
    @showpin = Showpin.new
  end

  # GET /showpins/1/edit
  def edit
  end

  # POST /showpins
  # POST /showpins.json
  def create

      @showroom = Showroom.find(params[:showroom_id])
      @showpin = @showroom.showpins.create!(showpin_params)
    #@sku = Sku.new(sku_params)

    redirect_to @showroom
  end

  # PATCH/PUT /showpins/1
  # PATCH/PUT /showpins/1.json
  def update
    respond_to do |format|
      if @showpin.update(showpin_params)
        format.html { redirect_to @showpin, notice: 'Showpin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @showpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showpins/1
  # DELETE /showpins/1.json
  def destroy
    @showpin.destroy
    redirect_to "/showrooms"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showpin
      @showpin = Showpin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showpin_params
      params.require(:showpin).permit(:nota, :titulo)
    end
end
