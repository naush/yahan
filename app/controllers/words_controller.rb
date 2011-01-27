class WordsController < ApplicationController
  set_tab :new_word

  def new
    @word = Word.new
    @shapes = Shape.all
    @positions = Position.all
    @movements = Movement.all
  end
  
  def create
    puts "PARAMS: #{params.inspect}"
  end

end
