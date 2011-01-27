class Word < ActiveRecord::Base
  belongs_to :dialect
  belongs_to :shape
  belongs_to :orientation
  belongs_to :position
  belongs_to :movement
end