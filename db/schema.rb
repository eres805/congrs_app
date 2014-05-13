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

ActiveRecord::Schema.define(version: 20140512211559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "representatives", force: true do |t|
    t.string  "title"
    t.string  "first_name"
    t.string  "middle_name"
    t.string  "last_name"
    t.string  "name_suffix"
    t.string  "gender"
    t.string  "party"
    t.string  "facebook_id"
    t.string  "twitter_id"
    t.string  "youtube_id"
    t.string  "govtrack_id"
    t.string  "crp_id"
    t.string  "bioguide_id"
    t.integer "votesmart_id"
    t.string  "office"
    t.string  "contact_form"
    t.integer "fax"
    t.integer "phone"
    t.date    "term_start"
    t.date    "term_end"
    t.date    "birthday"
    t.integer "district"
    t.integer "state_id"
  end

  add_index "representatives", ["state_id"], name: "index_representatives_on_state_id", using: :btree

  create_table "senators", force: true do |t|
    t.string  "title"
    t.string  "first_name"
    t.string  "middle_name"
    t.string  "last_name"
    t.string  "name_suffix"
    t.string  "gender"
    t.string  "party"
    t.string  "facebook_id"
    t.string  "twitter_id"
    t.string  "youtube_id"
    t.string  "govtrack_id"
    t.string  "crp_id"
    t.string  "bioguide_id"
    t.integer "votesmart_id"
    t.string  "office"
    t.string  "contact_form"
    t.integer "fax"
    t.integer "phone"
    t.date    "term_start"
    t.date    "term_end"
    t.date    "birthday"
    t.string  "state_rank"
    t.string  "senate_class"
    t.integer "state_id"
  end

  add_index "senators", ["state_id"], name: "index_senators_on_state_id", using: :btree

  create_table "states", force: true do |t|
    t.string  "name"
    t.string  "abbreviation"
    t.integer "population"
    t.integer "num_reps"
  end

  create_table "users", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

end
