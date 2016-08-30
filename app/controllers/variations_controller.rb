class VariationsController < ApplicationController
  load_and_authorize_resource
  before_action :set_variation, only: [:show, :edit, :update, :destroy]

  # GET /variations
  # GET /variations.json
  def index
    @product = Product.find(params[:product_id])
    @variations = @product.variations
  end

  # GET /variations/1
  # GET /variations/1.json
  def show
    
  end

  # GET /variations/new
  def new
    @product = Product.find(params[:product_id])


    # Associate an item object with order 1
    @variation = @product.variations.build
  end

  # GET /variations/1/edit
  def edit
  end

  # POST /variations
  # POST /variations.json
  #def create
  # @variation = Variation.new(variation_params)
  #end



  def create
    @product = Product.find(params[:product_id])
    @variation = @product.variations.create!(variation_params)
   
    redirect_to @product
  end

  # PATCH/PUT /variations/1
  # PATCH/PUT /variations/1.json
  def update
    respond_to do |format|
      if @variation.update(variation_params)
        format.html { redirect_to @variation, notice: 'Variation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @variation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variations/1
  # DELETE /variations/1.json
  def destroy
    @variation.destroy
    redirect_to "/products"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variation
      @variation = Variation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def variation_params
      params.require(:variation).permit(:name, :product_id)
    end


end
