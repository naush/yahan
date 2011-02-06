class WordsController < ApplicationController
  def new
    @word = Word.new
    @handshapes = Handshape.all
    @orientations = Orientation.all
    @positions = Position.all
    @movements = Movement.all
  end
  
  def create
    word = Word.new(:text => params[:word][:text], :memo => params[:word][:memo], :dialect => Dialect.find(params[:word][:dialect]))
    if word.save
      sign_1 = Sign.create(extract_sign(params[:sign_1], word)) if params[:sign_1][:saved] == "true"
      sign_2 = Sign.create(extract_sign(params[:sign_2], word)) if params[:sign_2][:saved] == "true"
      sign_3 = Sign.create(extract_sign(params[:sign_3], word)) if params[:sign_3][:saved] == "true"
      redirect_to word_path(word)
    end
  end
  
  def show
    @word = Word.find params[:id]
    @signs = Sign.all.select { |sign| sign.word_id == @word.id }
  end

  def extract_sign(params, word)
    if params[:hand] == "2"
      {:order => params[:order],
       :left_handshape => LeftHandshape.find(params[:left_handshape]),
       :right_handshape => RightHandshape.find(params[:right_handshape]),
       :left_orientation => LeftOrientation.find(params[:left_orientation]),
       :right_orientation => RightOrientation.find(params[:right_orientation]),
       :position => Position.find(params[:position]),
       :movement => Movement.find(params[:movement]),
       :created_at => Time.now,
       :word_id => word.id}
    else
      {:order => params[:order],
       :left_handshape => LeftHandshape.find(params[:left_handshape]),
       :left_orientation => LeftOrientation.find(params[:left_orientation]),
       :position => Position.find(params[:position]),
       :movement => Movement.find(params[:movement]),
       :created_at => Time.now,
       :word_id => word.id}
    end
  end

end
