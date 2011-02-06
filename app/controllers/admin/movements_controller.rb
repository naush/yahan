class Admin::MovementsController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @movements = Movement.all
  end

  def new
    @movement = Movement.new
    @positions = Position.all
  end

  def create
    @position = Position.find(params[:movement][:position_id])
    @image = Image.create(:file => params[:movement][:file], :attach_to => "movement")
    @movement = Movement.new(:url => @image.file.url, :position_id => @position.id, :image_id => @image.id)
    @movement.save
    redirect_to admin_movements_path
  end

  def destroy
    @movement = Movement.find(params[:id])
    @movement.destroy
    redirect_to admin_movements_path
  end
end