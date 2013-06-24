class ComponentsController < ApplicationController
def new
    @component = Component.new(:gallery_id => params[:gallery_id])
  end

  def create
    @component = Component.new(params[:component])
    if @component.save
      flash[:notice] = "Successfully created component."
      redirect_to @component.gallery
    else
      render :action => 'new'
    end
  end

  def edit
    @component = Component.find(params[:id])
  end

  def update
    @component = Component.find(params[:id])
    if @component.update_attributes(params[:component])
      flash[:notice] = "Successfully updated component."
      redirect_to @component.gallery
    else
      render :action => 'edit'
    end
  end

  def destroy
    @component = Component.find(params[:id])
    @component.destroy
    flash[:notice] = "Successfully destroyed component."
    redirect_to @component.gallery
  end

end
