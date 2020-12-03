# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_17_154411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.text "brand"
    t.text "name"
    t.text "style"
    t.text "hop"
    t.text "yeast"
    t.text "malts"
    t.text "ibu"
    t.text "alcohol"
    t.text "blg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "beers_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "beer_id", null: false
    t.index ["beer_id"], name: "index_beers_users_on_beer_id"
    t.index ["user_id"], name: "index_beers_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "phone"
    t.text "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
