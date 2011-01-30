class AddIdsToSigns < ActiveRecord::Migration
  def self.up
    add_column :signs, :left_handshape_id, :integer
    add_column :signs, :right_handshape_id, :integer
    add_column :signs, :left_orientation_id, :integer
    add_column :signs, :right_orientation_id, :integer
    add_column :signs, :position_id, :integer
    add_column :signs, :movement_id, :integer
  end

  def self.down
    remove_column :signs, :left_handshape_id
    remove_column :signs, :right_handshape_id
    remove_column :signs, :left_orientation_id
    remove_column :signs, :right_orientation_id
    remove_column :signs, :position_id
    remove_column :signs, :movement_id
  end
end
