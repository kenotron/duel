class CreateWeapons < ActiveRecord::Migration
  def self.up
    create_table :weapons do |t|
      t.string :name
      t.integer :attack_points
      t.integer :price

      t.timestamps
    end
    
    create_table :characters_weapons, :id => false do |t|
      t.integer :character_id
      t.integer :weapon_id
      
      t.timestamps
    end
    
    add_index :characters_weapons, [:character_id, :weapon_id], :unique => true
  end

  def self.down
    drop_table :weapons
    drop_table :characters_weapons
  end
end
