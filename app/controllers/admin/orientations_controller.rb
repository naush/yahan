class Admin::OrientationsController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @orientations = Orientation.all
  end
end