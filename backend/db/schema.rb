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

ActiveRecord::Schema.define(version: 2021_06_01_051347) do

  create_table "doctors_offices", force: :cascade do |t|
    t.integer "physician_id"
    t.integer "user_id"
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string "name"
    t.integer "pharmacy_phone_number"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "postcode"
  end

  create_table "pharmacy_stocks", force: :cascade do |t|
    t.integer "pharmacy_id"
    t.integer "prescription_id"
  end

  create_table "physicians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "specialty"
    t.integer "physician_phone_number"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "postcode"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string "brand_name"
    t.string "technical_name"
    t.string "purpose"
    t.string "dosage"
    t.string "dosage_times"
    t.string "size"
    t.string "shape"
    t.string "color"
    t.string "side_effects"
    t.integer "refill_number"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "postcode"
  end

end
