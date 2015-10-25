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

ActiveRecord::Schema.define(version: 20151025112838) do

  create_table "sample_rails_engine_group_memberships", force: :cascade do |t|
    t.integer  "member_id"
    t.string   "member_type"
    t.integer  "group_id"
    t.string   "group_type"
    t.string   "group_name"
    t.string   "membership_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sample_rails_engine_group_memberships", ["group_name"], name: "index_sample_rails_engine_group_memberships_on_group_name"
  add_index "sample_rails_engine_group_memberships", ["group_type", "group_id"], name: "index_group_memberships_on_group_type_and_group_id"
  add_index "sample_rails_engine_group_memberships", ["member_type", "member_id"], name: "index_group_memberships_on_member_type_and_member_id"

  create_table "sample_rails_engine_groups", force: :cascade do |t|
    t.string "name"
    t.string "type"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
