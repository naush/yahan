class AddDialectIdToWords < ActiveRecord::Migration
  def self.up
    add_column :words, :dialect_id, :integer
  end

  def self.down
    remove_column :words, :dialect_id
  end
end
