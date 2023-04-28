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

ActiveRecord::Schema.define(version: 2023_04_27_022345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuts", force: :cascade do |t|
    t.text "name"
    t.text "location"
    t.text "alternative_name"
    t.text "characteristics"
    t.integer "dish_id"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuts_dishes", id: false, force: :cascade do |t|
    t.integer "cut_id"
    t.integer "dish_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.text "name"
    t.text "cuisine"
    t.integer "cut_id"
    t.integer "wine_id"
    t.text "image_URL"
    t.text "recipe_URL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes_pairings", id: false, force: :cascade do |t|
    t.bigint "dish_id", null: false
    t.bigint "pairing_id", null: false
  end

  create_table "dishes_wines", id: false, force: :cascade do |t|
    t.integer "dish_id"
    t.integer "wine_id"
  end

  create_table "pairings_wines", id: false, force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "pairing_id", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.text "name"
    t.text "region"
    t.text "varietal"
    t.text "dish_id"
    t.text "image_URL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines_dishes", id: false, force: :cascade do |t|
    t.integer "wine_id"
    t.integer "dish_id"
  end

end
