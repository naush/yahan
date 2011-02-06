class Admin::ImagesController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(params[:image])
    redirect_to admin_images_path
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to admin_images_path
  end
end