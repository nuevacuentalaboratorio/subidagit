class ArchivofoldersController < ApplicationController
  load_and_authorize_resource
  before_action :set_archivofolder, only: [:show, :edit, :update, :destroy]

  # GET /archivofolders
  # GET /archivofolders.json
  def index
    @archivofolders = Archivofolder.all
  end

  # GET /archivofolders/1
  # GET /archivofolders/1.json
  def show

  end

  # GET /archivofolders/new
  def new
    @archivofolder = Archivofolder.new
    @p = params[:p]
    @num = params[:num]
    #@folder = Folder.find(params[:folder_id])
    #@archivofolder = @folder.archivofolders.build
    
  end

  # GET /archivofolders/1/edit
  def edit

  end

  # POST /archivofolders
  # POST /archivofolders.json
  def create
    @archivofolder = Archivofolder.new(archivofolder_params)
    

    if @archivofolder.folder_id == nil
      @archivofolder.save
      redirect_to '/showrooms/'
    else
    @archivofolderpadre = Folder.find(@archivofolder.folder_id)
      
    respond_to do |format|
      if @archivofolder.save
        format.html { redirect_to @archivofolderpadre, notice: 'Archivofolder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @archivofolder }
      else
        format.html { render action: 'new' }
        format.json { render json: @archivofolder.errors, status: :unprocessable_entity }
      end
    end
  end
    #@folder = Folder.find(params[:folder_id])
    #@archivofolder = @folder.archivofolders.create!(archivofolder_params)
    #redirect_to @folder
  end

  # PATCH/PUT /archivofolders/1
  # PATCH/PUT /archivofolders/1.json
  def update
    respond_to do |format|
      if @archivofolder.update(archivofolder_params)
        format.html { redirect_to '/folders/1', notice: 'Archivofolder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @archivofolder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivofolders/1
  # DELETE /archivofolders/1.json
  def destroy
    @archivofolder.destroy
    respond_to do |format|
      format.html { redirect_to archivofolders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archivofolder
      @archivofolder = Archivofolder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archivofolder_params
      params.require(:archivofolder).permit(:nombre, :autor, :filefolder, :folder_id, :showroom_id)
    end
end
