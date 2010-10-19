class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.string :name
      t.integer :challenger_id
      t.integer :character_id

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
