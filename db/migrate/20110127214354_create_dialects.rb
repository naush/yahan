class CreateDialects < ActiveRecord::Migration
  def self.up
    create_table :dialects do |t|
      t.string :name
      t.integer :word_id
      t.timestamps
    end
  end

  def self.down
    drop_table :dialects
  end
end
