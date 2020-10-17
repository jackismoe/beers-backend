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

  create_table "beers", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "style"
    t.string "hop"
    t.string "yeast"
    t.string "malts"
    t.string "ibu"
    t.string "alcohol"
    t.string "blg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "beers_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "beer_id", null: false
    t.index ["beer_id"], name: "index_beers_users_on_beer_id"
    t.index ["user_id"], name: "index_beers_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "phone"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
