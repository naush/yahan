class Admin::DialectsController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @dialects = Dialect.all
  end
end