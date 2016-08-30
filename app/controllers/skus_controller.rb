class SkusController < ApplicationController
  load_and_authorize_resource
  before_action :set_sku, only: [:show, :edit, :update, :destroy]

  # GET /skus
  # GET /skus.json
  def index
    @product = Product.find(params[:product_id])
    @skus =  @product.skus

    respond_to do |format|
    format.html # don't forget if you pass html
    format.xls { send_data(@skus.to_xls) }
    # format.xls {
    #   filename = "Posts-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
    #   send_data(@posts.to_xls, :type => "text/xls; charset=utf-8; header=present", :filename => filename)
    # }
  end
  
  end

  # GET /skus/1
  # GET /skus/1.json
  def show
  end

  # GET /skus/new
  def new
     @product = Product.find(params[:product_id])
     @sku = @product.skus.build
     redirect_to products
   # @sku = Sku.new
  end

  # GET /skus/1/edit
  def edit
  end

  # POST /skus
  # POST /skus.json
  def create
     @product = Product.find(params[:product_id])
      @sku = @product.skus.create!(sku_params)
    #@sku = Sku.new(sku_params)

    redirect_to @product
   
  end

  # PATCH/PUT /skus/1
  # PATCH/PUT /skus/1.json
  def update
    
  end

  # DELETE /skus/1
  # DELETE /skus/1.json
  def destroy
    @sku.destroy
    redirect_to "/products"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sku
      @sku = Sku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sku_params
      params.require(:sku).permit(:productid, :sku, :variant1, :variant2, :variant3, :ean, :retailprice, :saleprice, :cost, :inv, :classification, :brand, :weight)
    end
end
