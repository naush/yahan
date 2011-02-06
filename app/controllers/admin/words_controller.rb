class Admin::WordsController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @words = Word.all
    @signs = Sign.all
  end

  def destroy
    @sign = Sign.find(params[:id])
    word_id = @sign.word_id
    @sign.destroy
    if Sign.find(:all, :conditions => {:word_id => word_id}).empty?
      Word.find(word_id).destroy
    end
    redirect_to admin_words_path
  end
end