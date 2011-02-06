class Admin::PositionsController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @positions = Position.all
  end

  def new
    @position = Position.new
  end

  def create
    @image = Image.create(:file => params[:position][:file], :attach_to => "position")
    @position = Position.new(:hand => params[:position][:hand], :image_id => @image.id, :url => @image.file.url)
    @position.save
    redirect_to admin_positions_path
  end

  def destroy
    @position = Position.find(params[:id])
    @position.destroy
    redirect_to admin_positions_path
  end
end