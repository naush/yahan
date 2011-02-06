class AddImageIdToMovements < ActiveRecord::Migration
  def self.up
    add_column :movements, :image_id, :string
  end

  def self.down
    remove_column :movements, :image_id
  end
end
