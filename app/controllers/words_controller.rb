class WordsController < ApplicationController
  set_tab :new_word

  def new
    @word = Word.new
    @handshapes = Handshape.all
    @orientations = Orientation.all
    @positions = Position.all
    @movements = Movement.all
  end
  
  def create
    puts "PARAMS: #{params.inspect}"
  end

end
