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

ActiveRecord::Schema.define(version: 20160814102416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "place_id"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_places", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "establishedAt"
    t.integer  "phoneNumber"
    t.string   "email"
    t.string   "city"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "category_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "date"
    t.integer  "numberOfPeople"
    t.integer  "place_id"
    t.integer  "customer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_foreign_key "comments", "places"
  add_foreign_key "places", "categories"
end
