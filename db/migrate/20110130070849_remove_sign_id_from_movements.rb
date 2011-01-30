class RemoveSignIdFromMovements < ActiveRecord::Migration
  def self.up
    remove_column :movements, :sign_id
  end

  def self.down
    add_column :movements, :sign_id, :integer
  end
end
