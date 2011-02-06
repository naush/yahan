class Admin::OrientationsController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @orientations = Orientation.all
  end

  def new
    @orientation = Orientation.new
  end

  def create
    @image = Image.create(:file => params[:orientation][:file], :attach_to => "orientation")
    @orientation = Orientation.new(:image_id => @image.id, :url => @image.file.url)
    @orientation.save
    redirect_to admin_orientations_path
  end

  def destroy
    @orientation = Orientation.find(params[:id])
    @orientation.destroy
    redirect_to admin_orientations_path
  end
end