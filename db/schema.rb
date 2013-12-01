# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20131201023425) do

  create_table "connections", :force => true do |t|
    t.string   "direction"
    t.integer  "room_id"
    t.boolean  "traversable"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "inventories", :force => true do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.integer  "max_cap"
    t.integer  "current_cap"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "short_desc"
    t.text     "long_desc"
    t.integer  "connection_id"
    t.integer  "inventory_id"
    t.integer  "room_id"
    t.boolean  "takeable"
    t.boolean  "useable"
    t.boolean  "openable"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.text     "enter_desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.text     "username"
    t.text     "password"
    t.text     "email"
    t.integer  "session_id"
    t.integer  "inventory_id"
    t.integer  "room_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
