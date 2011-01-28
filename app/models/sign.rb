class Sign < ActiveRecord::Base
  belongs_to :left_handshape
  belongs_to :right_handshape
  belongs_to :left_orientation
  belongs_to :right_orientation
  belongs_to :position
  belongs_to :movement
end