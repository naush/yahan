class Admin::DialectsController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @dialects = Dialect.all
  end

  def new
    @dialect = Dialect.new
  end

  def create
    Dialect.create(:name => params[:dialect][:name])
    redirect_to admin_dialects_path
  end

  def destroy
    @dialect = Dialect.find(params[:id])
    @dialect.destroy
    redirect_to admin_dialects_path
  end
end