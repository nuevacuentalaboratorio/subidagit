require 'httparty'

class ProductsController < ApplicationController
  load_and_authorize_resource
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json

  def jsontodb
    @products = Product.abc

    #render :json => @products
    redirect_to "/products"

  end

  def import
    Product.import(params[:file])
    redirect_to "/products", notice: "Products imported."
  end

  def index

    @products = Product.all
    @mensaje = "";
    @products = Product.order(:title)
    respond_to do |format|
    format.html # don't forget if you pass html
    format.xls { send_data(@products.to_xls) }
    # format.xls {
    #   filename = "Posts-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
    #   send_data(@posts.to_xls, :type => "text/xls; charset=utf-8; header=present", :filename => filename)
    # }
  end
   
  end

  # GET /products/1
  # GET /products/1.json
  def show

     @variations = @product.variations
     @skus = @product.skus

    respond_to do |format|
    format.html # don't forget if you pass html
    format.xls { send_data(@skus.to_xls) }
    # format.xls {
    #   filename = "Posts-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
    #   send_data(@posts.to_xls, :type => "text/xls; charset=utf-8; header=present", :filename => filename)
    # }
  end

  end

 

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :tags, :price, :asset, :asset2, :asset3)
    end
end
