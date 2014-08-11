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

ActiveRecord::Schema.define(version: 20140811074636) do

  create_table "event_users", force: true do |t|
    t.integer  "event_id"
    t.integer  "owner_id"
    t.integer  "attender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_users", ["attender_id"], name: "index_event_users_on_attender_id"
  add_index "event_users", ["event_id", "attender_id"], name: "index_event_users_on_event_id_and_attender_id", unique: true
  add_index "event_users", ["event_id", "owner_id"], name: "index_event_users_on_event_id_and_owner_id", unique: true
  add_index "event_users", ["event_id"], name: "index_event_users_on_event_id"
  add_index "event_users", ["owner_id"], name: "index_event_users_on_owner_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
