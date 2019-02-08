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

ActiveRecord::Schema.define(version: 2019_02_07_200458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.string "state"
    t.string "neighborhood"
    t.string "street"
    t.string "number"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "complement"
    t.index ["client_id"], name: "index_addresses_on_client_id"
  end

  create_table "cashiers", force: :cascade do |t|
    t.decimal "price"
    t.integer "paymment"
    t.decimal "paid_value"
    t.integer "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "therapy_id"
    t.bigint "client_id"
    t.integer "discount"
    t.decimal "therapist_value", precision: 8, scale: 2
    t.bigint "product_movment_id"
    t.bigint "pagamento_caixa_id"
    t.index ["client_id"], name: "index_cashiers_on_client_id"
    t.index ["pagamento_caixa_id"], name: "index_cashiers_on_pagamento_caixa_id"
    t.index ["product_movment_id"], name: "index_cashiers_on_product_movment_id"
    t.index ["therapy_id"], name: "index_cashiers_on_therapy_id"
    t.index ["user_id"], name: "index_cashiers_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.string "email"
    t.string "occupation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "indication"
    t.decimal "credit"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.boolean "paid"
    t.string "color"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cashier_id"
    t.index ["cashier_id"], name: "index_events_on_cashier_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "user_id"
    t.bigint "therapy_id"
    t.text "description"
    t.bigint "cashier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "active"
    t.index ["cashier_id"], name: "index_items_on_cashier_id"
    t.index ["client_id"], name: "index_items_on_client_id"
    t.index ["therapy_id"], name: "index_items_on_therapy_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "pagamento_caixas", force: :cascade do |t|
    t.bigint "pagamento_id"
    t.bigint "cashier_id"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cashier_id"], name: "index_pagamento_caixas_on_cashier_id"
    t.index ["pagamento_id"], name: "index_pagamento_caixas_on_pagamento_id"
  end

  create_table "pagamentos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_clients", force: :cascade do |t|
    t.string "number"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_phone_clients_on_client_id"
  end

  create_table "phone_users", force: :cascade do |t|
    t.string "number"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phone_users_on_user_id"
  end

  create_table "product_movements", force: :cascade do |t|
    t.bigint "product_id"
    t.integer "kind"
    t.decimal "price"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cashier_id"
    t.bigint "user_id"
    t.decimal "buy_value"
    t.text "description"
    t.index ["cashier_id"], name: "index_product_movements_on_cashier_id"
    t.index ["product_id"], name: "index_product_movements_on_product_id"
    t.index ["user_id"], name: "index_product_movements_on_user_id"
  end

  create_table "product_movments", force: :cascade do |t|
    t.bigint "product_id"
    t.integer "kind"
    t.decimal "price"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_movments_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "buy_value"
  end

  create_table "records", force: :cascade do |t|
    t.boolean "cream_allergy"
    t.integer "blood_pressure"
    t.boolean "uses_pacemaker"
    t.boolean "diabetes"
    t.boolean "surgery"
    t.string "surgery_where"
    t.boolean "accident_fracture"
    t.string "accident_where"
    t.boolean "bone_disease"
    t.boolean "medicine"
    t.string "medicine_which"
    t.boolean "faint_seizure"
    t.boolean "woman_pregnant"
    t.boolean "woman_contraceptive"
    t.text "pains"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_records_on_client_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "client_id"
    t.text "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "therapy_id"
    t.index ["client_id"], name: "index_schedules_on_client_id"
    t.index ["therapy_id"], name: "index_schedules_on_therapy_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "therapies", force: :cascade do |t|
    t.string "name"
    t.decimal "price", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "therapies_users", force: :cascade do |t|
    t.bigint "therapy_id"
    t.bigint "user_id"
    t.index ["therapy_id"], name: "index_therapies_users_on_therapy_id"
    t.index ["user_id"], name: "index_therapies_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "kind"
    t.integer "status"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "color"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "clients"
  add_foreign_key "cashiers", "clients"
  add_foreign_key "cashiers", "pagamento_caixas"
  add_foreign_key "cashiers", "product_movments"
  add_foreign_key "cashiers", "therapies"
  add_foreign_key "cashiers", "users"
  add_foreign_key "events", "cashiers"
  add_foreign_key "items", "cashiers"
  add_foreign_key "items", "clients"
  add_foreign_key "items", "therapies"
  add_foreign_key "items", "users"
  add_foreign_key "pagamento_caixas", "cashiers"
  add_foreign_key "pagamento_caixas", "pagamentos"
  add_foreign_key "phone_clients", "clients"
  add_foreign_key "phone_users", "users"
  add_foreign_key "product_movements", "cashiers"
  add_foreign_key "product_movements", "products"
  add_foreign_key "product_movements", "users"
  add_foreign_key "product_movments", "products"
  add_foreign_key "records", "clients"
  add_foreign_key "schedules", "clients"
  add_foreign_key "schedules", "therapies"
  add_foreign_key "schedules", "users"
end
