class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.integer :gold
      t.integer :attack_points
      t.integer :defense_points
      t.integer :hit_points
      t.integer :level
      t.integer :experience_points
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
