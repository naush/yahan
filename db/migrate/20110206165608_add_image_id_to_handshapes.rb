class AddImageIdToHandshapes < ActiveRecord::Migration
  def self.up
    add_column :handshapes, :image_id, :string
  end

  def self.down
    remove_column :handshapes, :image_id
  end
end
