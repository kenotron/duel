class AddMovesLeft < ActiveRecord::Migration
  def self.up
    add_column :characters, :moves_reset_at, :datetime
    add_column :characters, :moves_left, :integer, :default => 10
  end

  def self.down
    remove_column :characters, :moves_reset_at
    remove_column :characters, :moves_left
  end
end
