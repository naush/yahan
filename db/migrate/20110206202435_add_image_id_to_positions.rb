class AddImageIdToPositions < ActiveRecord::Migration
  def self.up
    add_column :positions, :image_id, :string
  end

  def self.down
    remove_column :positions, :image_id
  end
end
