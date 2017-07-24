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

ActiveRecord::Schema.define(version: 20170724013256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "password_digest"
    t.integer "role"
    t.text "first_name"
    t.text "last_name"
    t.integer "zipcode"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_lists", force: :cascade do |t|
    t.text "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_lists_wines", id: false, force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "wine_list_id", null: false
    t.index ["wine_id", "wine_list_id"], name: "index_wine_lists_wines_on_wine_id_and_wine_list_id"
    t.index ["wine_list_id", "wine_id"], name: "index_wine_lists_wines_on_wine_list_id_and_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.text "name"
    t.text "variety"
    t.float "price"
    t.text "designation"
    t.text "maker"
    t.text "description"
    t.text "country"
    t.integer "points"
    t.text "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
