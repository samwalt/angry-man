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

ActiveRecord::Schema.define(version: 20131113145556) do

  create_table "assist_system_users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "base64key"
    t.integer  "assist_system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assist_system_users", ["assist_system_id"], name: "index_assist_system_users_on_assist_system_id"

  create_table "assist_systems", force: true do |t|
    t.string   "name"
    t.string   "host"
    t.string   "port"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servers", force: true do |t|
    t.string   "code",       limit: 2
    t.string   "service",    limit: 10
    t.string   "ip",         limit: 15
    t.string   "port",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
