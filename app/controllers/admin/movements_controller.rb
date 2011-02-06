class Admin::MovementsController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @movements = Movement.all
  end
end