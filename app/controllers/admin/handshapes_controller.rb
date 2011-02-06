class Admin::HandshapesController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @handshapes = Handshape.all
  end
end