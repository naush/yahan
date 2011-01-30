class RemoveSignIdFromHandshapes < ActiveRecord::Migration
  def self.up
    remove_column :handshapes, :sign_id
  end

  def self.down
    add_column :handshapes, :sign_id, :integer
  end
end
