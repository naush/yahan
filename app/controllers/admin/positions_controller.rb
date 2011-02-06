class Admin::PositionsController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @positions = Position.all
  end
end