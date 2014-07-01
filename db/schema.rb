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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140701161409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.text     "content"
    t.integer  "guest_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["guest_id"], name: "index_messages_on_guest_id", using: :btree
  add_index "messages", ["room_id"], name: "index_messages_on_room_id", using: :btree

  create_table "rooms", force: true do |t|
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["slug"], name: "index_rooms_on_slug", using: :btree

end
