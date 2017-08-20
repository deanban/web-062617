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

ActiveRecord::Schema.define(version: 20170820194834) do

  create_table "bar_bartenders", force: :cascade do |t|
    t.integer "bar_id"
    t.integer "bartender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_bar_bartenders_on_bar_id"
    t.index ["bartender_id"], name: "index_bar_bartenders_on_bartender_id"
  end

  create_table "bars", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bartenders", force: :cascade do |t|
    t.string "name"
    t.integer "drink_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drink_category_id"], name: "index_bartenders_on_drink_category_id"
  end

  create_table "drink_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "drink_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drink_category_id"], name: "index_drinks_on_drink_category_id"
  end

end
