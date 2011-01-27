class AddPositionToMovements < ActiveRecord::Migration
  def self.up
    add_column :movements, :position_id, :integer
  end

  def self.down
    remove_column :movements, :position_id
  end
end
