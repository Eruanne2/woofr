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

ActiveRecord::Schema.define(version: 2021_10_08_002104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age"
    t.string "username", null: false
    t.string "owner_name"
    t.string "breed"
    t.string "size"
    t.string "color"
    t.integer "weight"
    t.string "favorite_food"
    t.string "favorite_fire_hydrant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_dogs_on_username", unique: true
  end

  create_table "matches", force: :cascade do |t|
    t.integer "match_1_id", null: false
    t.integer "match_2_id", null: false
    t.index ["match_1_id", "match_2_id"], name: "index_matches_on_match_1_id_and_match_2_id", unique: true
    t.index ["match_1_id"], name: "index_matches_on_match_1_id"
    t.index ["match_2_id"], name: "index_matches_on_match_2_id"
  end

end
