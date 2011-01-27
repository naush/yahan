class CreateShapes < ActiveRecord::Migration
  def self.up
    create_table :shapes do |t|
      t.integer :finger
      t.string :url
      t.timestamps
    end
  end

  def self.down
    drop_table :shapes
  end
end
