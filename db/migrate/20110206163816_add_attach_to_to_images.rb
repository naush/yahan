class AddAttachToToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :attach_to, :string
  end

  def self.down
    remove_column :images, :attach_to
  end
end
