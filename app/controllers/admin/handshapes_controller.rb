class Admin::HandshapesController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @handshapes = Handshape.all
  end

  def new
    @handshape = Handshape.new
  end

  def create
    @image = Image.create(:file => params[:handshape][:file], :attach_to => "handshape")
    @handshape = Handshape.new(:finger => params[:handshape][:finger], :image_id => @image.id, :url => @image.file.url)
    @handshape.save
    redirect_to admin_handshapes_path
  end

  def destroy
    @handshape = Handshape.find(params[:id])
    @handshape.destroy
    redirect_to admin_handshapes_path
  end
end
