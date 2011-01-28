class CreateHandshapes < ActiveRecord::Migration
  def self.up
    create_table :handshapes do |t|
      t.string :finger
      t.string :url
      t.integer :sign_id
      t.timestamps
    end
  end

  def self.down
    drop_table :handshapes
  end
end
