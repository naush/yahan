class Movement < ActiveRecord::Base
  has_many :signs
  belongs_to :position

  def self.find_by_position position
    all.select {|movement| movement.position == position}
  end
end
