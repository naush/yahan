class AddWordIdToSigns < ActiveRecord::Migration
  def self.up
    add_column :signs, :word_id, :integer
  end

  def self.down
    remove_column :signs, :word_id
  end
end
