class FoldersController < ApplicationController
  load_and_authorize_resource
  before_action :set_folder, only: [:show, :edit, :update, :destroy]

  # GET /folders
  # GET /folders.json
  def index
    #if params[:id] == nil
    @folders = Folder.where(["id_padre = 1"])
    
    @p = "?p=1"
    @idpadre = 1
    @folder = Folder.find(1)
    @nombre = "home"
    @archivofolders = Archivofolder.where(["folder_id = 1"])

    #else
    #@folder = Folder.find(params[1])
    #end
  end

  # GET /folders/1
  # GET /folders/1.json
  def show
    @folders = Folder.where(["id_padre = ?", params[:id]])
     @archivofolders = Archivofolder.where(["folder_id = #{params[:id]}"])
    @p = "?p="+params[:id]
    @idpadre = Folder.where(["id = ?", params[:id]])[0].id_padre
    @nombre = Folder.where(["id = ?", params[:id]])[0].nombre
    #@idpadre = Folder.find(params[:id_padre])
    render "index"
    #@folders = Folder.all
    #archivos de carpeta
    
  end

  # GET /folders/new
  def new
    @folder = Folder.new
    @p = params[:p]
    @showrooms = Showroom.all
  end

  # GET /folders/1/edit
  def edit
  end

  # POST /folders
  # POST /folders.json
  def create

    @folder = Folder.new(folder_params)
    @folderpadre = Folder.find(@folder.id_padre)
    respond_to do |format|
      if @folder.save
        format.html { redirect_to @folderpadre, notice: 'Folder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @folder }
      else
        format.html { render action: 'new' }
        format.json { render json: @folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /folders/1
  # PATCH/PUT /folders/1.json
  def update
    respond_to do |format|
      if @folder.update(folder_params)
        format.html { redirect_to @folder, notice: 'Folder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folders/1
  # DELETE /folders/1.json
  def destroy
    @folder.destroy
    respond_to do |format|
      format.html { redirect_to '/folders/1' }
      format.json { head :no_content }
    end


  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folder
      @folder = Folder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def folder_params
      params.require(:folder).permit(:nombre, :id_padre)
    end
end
