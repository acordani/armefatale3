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

ActiveRecord::Schema.define(version: 2018_10_17_081630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "citysearches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "type"
    t.string "phone"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lands", force: :cascade do |t|
    t.string "number"
    t.integer "surface"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "file"
    t.bigint "city_id"
    t.bigint "citysearch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_lands_on_city_id"
    t.index ["citysearch_id"], name: "index_lands_on_citysearch_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id"
    t.bigint "citysearch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_neighborhoods_on_city_id"
    t.index ["citysearch_id"], name: "index_neighborhoods_on_citysearch_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "city_id"
    t.bigint "user_id"
    t.bigint "citysearch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_orders_on_city_id"
    t.index ["citysearch_id"], name: "index_orders_on_citysearch_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "firstname"
    t.string "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "lands", "cities"
  add_foreign_key "lands", "citysearches"
  add_foreign_key "neighborhoods", "cities"
  add_foreign_key "neighborhoods", "citysearches"
  add_foreign_key "orders", "cities"
  add_foreign_key "orders", "citysearches"
  add_foreign_key "orders", "users"
end
