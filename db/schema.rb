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

ActiveRecord::Schema.define(version: 20141210203608) do

  create_table "groupings", force: true do |t|
    t.string   "name"
    t.string   "abrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "abrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stamps", force: true do |t|
    t.integer  "type_id"
    t.integer  "location_id"
    t.integer  "grouping_id"
    t.string   "scott_number"
    t.integer  "num_items"
    t.integer  "num_in_items"
    t.string  "face_value"
    t.string   "year_issued"
    t.text     "description"
    t.string   "location_type_name"
    t.string   "location_type_num"
    t.integer  "num_used"
    t.string  "scotts_used_value"
    t.integer  "num_mint"
    t.string  "scotts_mint_value"
    t.date     "date_lastr_viewed"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.string   "abrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
