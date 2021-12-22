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

ActiveRecord::Schema.define(version: 2021_12_22_183609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deliveries", force: :cascade do |t|
    t.bigint "item_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string "start_address"
    t.string "end_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status"
    t.index ["item_id"], name: "index_deliveries_on_item_id"
  end

  create_table "delivery_courier_bids", force: :cascade do |t|
    t.bigint "courier_id"
    t.bigint "delivery_id"
    t.float "price"
    t.string "start_address"
    t.string "end_address"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_accepted_by_seller"
    t.index ["courier_id"], name: "index_delivery_courier_bids_on_courier_id"
    t.index ["delivery_id"], name: "index_delivery_courier_bids_on_delivery_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "seller_id"
    t.float "price", default: 0.0
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "users_id"
    t.bigint "seller_id_id"
    t.index ["seller_id"], name: "index_items_on_seller_id"
    t.index ["seller_id_id"], name: "index_items_on_seller_id_id"
    t.index ["users_id"], name: "index_items_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.integer "role", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
  end

  create_table "wharehouses", force: :cascade do |t|
    t.string "address"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wharehousings", force: :cascade do |t|
    t.bigint "wharehouse_id"
    t.bigint "delivery_courier_bid_id"
    t.bigint "wharehouseman_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_accepted_by_seller"
    t.float "price"
    t.datetime "start_date"
    t.datetime "end_date"
    t.index ["delivery_courier_bid_id"], name: "index_wharehousings_on_delivery_courier_bid_id"
    t.index ["wharehouse_id"], name: "index_wharehousings_on_wharehouse_id"
    t.index ["wharehouseman_id"], name: "index_wharehousings_on_wharehouseman_id"
  end

end
