class Word < ActiveRecord::Base
  belongs_to :dialect
  belongs_to :sign
end
