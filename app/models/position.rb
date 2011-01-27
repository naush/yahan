class Position < ActiveRecord::Base
  has_many :movements, :autosave => true
  
  def self.one_hand
    all.select{|position| position.hand == 1}
  end

  def self.two_hands
    all.select{|position| position.hand == 2}
  end
end
