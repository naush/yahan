class AddImageIdToOrientations < ActiveRecord::Migration
  def self.up
    add_column :orientations, :image_id, :string
  end

  def self.down
    remove_column :orientations, :image_id
  end
end
