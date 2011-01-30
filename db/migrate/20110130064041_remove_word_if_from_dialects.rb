class RemoveWordIfFromDialects < ActiveRecord::Migration
  def self.up
    remove_column :dialects, :word_id
  end

  def self.down
    add_column :dialects, :word_id, :integer
  end
end
