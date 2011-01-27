class RemoveDialectFromWord < ActiveRecord::Migration
  def self.up
    remove_column :words, :dialect
  end

  def self.down
    add_column :words, :dialect, :string
  end
end
