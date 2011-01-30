class RemoveSignIdFromOrientations < ActiveRecord::Migration
  def self.up
    remove_column :orientations, :sign_id
  end

  def self.down
    add_column :orientations, :sign_id, :integer
  end
end
