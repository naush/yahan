class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.integer :hand
      t.string :url
      t.timestamps
    end
  end

  def self.down
    drop_table :positions
  end
end
