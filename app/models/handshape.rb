class Handshape < ActiveRecord::Base
  has_many :signs
  belongs_to :image
  def new
    @handshape = Handshape.new
  end

  def create
    @image = Image.create(params[:image])
    redirect_to admin_images_path
  end

  def index
    @images = Image.all
  end
end
