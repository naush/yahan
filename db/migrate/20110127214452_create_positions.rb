class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.string :hand
      t.string :url
      t.integer :sign_id
      t.timestamps
    end
  end

  def self.down
    drop_table :positions
  end
end
