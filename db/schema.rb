# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101022001945) do

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.string   "gender"
    t.integer  "gold"
    t.integer  "attack_points"
    t.integer  "defense_points"
    t.integer  "hit_points"
    t.integer  "level"
    t.integer  "experience_points"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "moves_reset_at"
    t.integer  "moves_left",        :default => 10
  end

  create_table "characters_weapons", :id => false, :force => true do |t|
    t.integer  "character_id"
    t.integer  "weapon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters_weapons", ["character_id", "weapon_id"], :name => "index_characters_weapons_on_character_id_and_weapon_id", :unique => true

  create_table "matches", :force => true do |t|
    t.string   "name"
    t.integer  "challenger_id"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "weapons", :force => true do |t|
    t.string   "name"
    t.integer  "attack_points"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
