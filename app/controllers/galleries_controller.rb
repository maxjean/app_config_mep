class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def show
  
    @gallery = Gallery.find(params[:id])
    @painting = Painting.where("gallery_id = ?", params[:id])
    respond_to do |format|
    	format.html
    	format.json { render json: @painting.as_json(only: [:id, :name])}
    end
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      flash[:notice] = "Successfully created gallery."
      redirect_to @gallery
    else
      render :action => 'new'
    end
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def update
    @gallery = Gallery.find(params[:id])
    if @gallery.update_attributes(params[:gallery])
      flash[:notice] = "Successfully updated gallery."
      redirect_to gallery_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    flash[:notice] = "Successfully destroyed gallery."
    redirect_to galleries_url
  end	
end
