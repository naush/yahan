class CreateOrientations < ActiveRecord::Migration
  def self.up
    create_table :orientations do |t|
      t.string :url
      t.timestamps
    end
  end

  def self.down
    drop_table :orientations
  end
end
