# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_31_172650) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: :cascade do |t|
    t.string "dish_name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurant_id"
    t.index ["restaurant_id"], name: "index_dishes_on_restaurant_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_favorites_on_restaurant_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_reservations_on_restaurant_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.integer "number_table"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_tables_on_restaurant_id"
  end

  create_table "tabs", force: :cascade do |t|
    t.float "total"
    t.bigint "table_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dish_id"
    t.index ["dish_id"], name: "index_tabs_on_dish_id"
    t.index ["table_id"], name: "index_tabs_on_table_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dishes", "restaurants"
  add_foreign_key "favorites", "restaurants"
  add_foreign_key "favorites", "users"
  add_foreign_key "reservations", "restaurants"
  add_foreign_key "reservations", "users"
  add_foreign_key "tables", "restaurants"
  add_foreign_key "tabs", "dishes"
  add_foreign_key "tabs", "tables"
end
