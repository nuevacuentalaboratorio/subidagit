class SkugraphsController < ApplicationController
  load_and_authorize_resource
  helper_method :sort_column, :sort_direction
  before_action :set_skugraph, only: [:show, :edit, :update, :destroy]

  # GET /skugraphs
  # GET /skugraphs.json
  def import
    Skugraph.import(params[:file])
    redirect_to "/skugraphs", notice: "SKUs imported."
  end

  def index
    @skugraphs = Skugraph.all
    @skugraphs = Skugraph.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 20, :page => params[:page])
  end

  # GET /skugraphs/1
  # GET /skugraphs/1.json
  def show
  end

  # GET /skugraphs/new
  def new
    @skugraph = Skugraph.new
  end

  # GET /skugraphs/1/edit
  def edit
  end

  # POST /skugraphs
  # POST /skugraphs.json
  def create
    @skugraph = Skugraph.new(skugraph_params)

    respond_to do |format|
      if @skugraph.save
        format.html { redirect_to @skugraph, notice: 'Skugraph was successfully created.' }
        format.json { render action: 'show', status: :created, location: @skugraph }
      else
        format.html { render action: 'new' }
        format.json { render json: @skugraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skugraphs/1
  # PATCH/PUT /skugraphs/1.json
  def update
    respond_to do |format|
      if @skugraph.update(skugraph_params)
        format.html { redirect_to @skugraph, notice: 'Skugraph was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @skugraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skugraphs/1
  # DELETE /skugraphs/1.json
  def destroy
    @skugraph.destroy
    respond_to do |format|
      format.html { redirect_to skugraphs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def sort_column
      Skugraph.column_names.include?(params[:sort]) ? params[:sort] : "sku"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    def set_skugraph
      @skugraph = Skugraph.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skugraph_params
      params.require(:skugraph).permit(:sku, :velocidad, :inventario)
    end
end
