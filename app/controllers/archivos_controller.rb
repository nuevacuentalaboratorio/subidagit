
class ArchivosController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_archivo, only: [:show, :edit, :update, :destroy]

  # GET /archivos
  # GET /archivos.json
  def index
    @archivos = Archivo.all
    @archivos = Archivo.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
  end


  def pdf
   
    send_file Rails.root.join('public/system/archivos/uploaded_files/000/000/006/original', 'zammy.pdf'), :type=>"application/pdf", :x_sendfile=>true
  end


  # GET /archivos/1
  # GET /archivos/1.json
  def show
     @archivo = Archivo.find(params[:id])
     @var = @archivo.uploaded_file.path
     @var2 = @var.gsub(@archivo.uploaded_file_file_name, '');

     if @archivo.uploaded_file_content_type == 'application/pdf'
     send_file Rails.root.join(@var2, @archivo.uploaded_file_file_name), :type=>"application/pdf", :x_sendfile=>true
     elsif @archivo.uploaded_file_content_type == 'application/zip'
     send_file Rails.root.join(@var2, @archivo.uploaded_file_file_name), :type=>"application/zip", :x_sendfile=>true
     elsif @archivo.uploaded_file_content_type == 'image/jpeg' or @archivo.uploaded_file_content_type == 'image/jpg' or @archivo.uploaded_file_content_type == 'image/png' or @archivo.uploaded_file_content_type == 'image/gif'
     send_file Rails.root.join(@var2, @archivo.uploaded_file_file_name), :type=>"image/jpeg", :x_sendfile=>true
     elsif @archivo.uploaded_file_content_type == 'application/doc'
     send_file Rails.root.join(@var2, @archivo.uploaded_file_file_name), :type=>"application/doc", :x_sendfile=>true
     elsif @archivo.uploaded_file_content_type == 'text/plain'
     send_file Rails.root.join(@var2, @archivo.uploaded_file_file_name), :type=>"text/plain", :x_sendfile=>true
     elsif @archivo.uploaded_file_content_type == 'application/msword'
     send_file Rails.root.join(@var2, @archivo.uploaded_file_file_name), :type=>"application/msword", :x_sendfile=>true
     elsif @archivo.uploaded_file_content_type == 'application/vnd.ms-excel'
     send_file Rails.root.join(@var2, @archivo.uploaded_file_file_name), :type=>"application/vnd.ms-excel", :x_sendfile=>true
     elsif @archivo.uploaded_file_content_type == 'text/csv'
     send_file Rails.root.join(@var2, @archivo.uploaded_file_file_name), :type=>"text/csv", :x_sendfile=>true
     end

  end



  # GET /archivos/new
  def new
    @archivo = Archivo.new
  end

  # GET /archivos/1/edit
  def edit
  end

  # POST /archivos
  # POST /archivos.json
  def create
    @archivo = Archivo.new(archivo_params)

    @archivo.uploaded_file = params[:archivo][:uploaded_file]
    @archivo.save
    
    redirect_to '/archivos'
  end

  # PATCH/PUT /archivos/1
  # PATCH/PUT /archivos/1.json
  def update
    respond_to do |format|
      if @archivo.update(archivo_params)
        format.html { redirect_to @archivo, notice: 'Archivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @archivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivos/1
  # DELETE /archivos/1.json
  def destroy
    @archivo.destroy
    respond_to do |format|
      format.html { redirect_to archivos_url }
      format.json { head :no_content }
    end
  end

  private
 
  def sort_column
    Archivo.column_names.include?(params[:sort]) ? params[:sort] : "nombre"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_archivo
      @archivo = Archivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archivo_params
      params.require(:archivo).permit(:nombre, :autor, :uploaded_file)
    end
end
