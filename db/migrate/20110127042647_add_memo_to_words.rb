class AddMemoToWords < ActiveRecord::Migration
  def self.up
    add_column :words, :memo, :string
  end

  def self.down
    remove_column :words, :memo
  end
end
