ActiveRecord::Schema.define(version: 2020_04_20_094402) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "total_price"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "client_id"
    t.bigint "flat_id"
    t.integer "travellers"
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["flat_id"], name: "index_bookings_on_flat_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone_number"
    t.string "address"
    t.string "civility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.boolean "kitchen"
    t.boolean "air_conditioner"
    t.boolean "hangers"
    t.boolean "washing_machine"
    t.boolean "television"
    t.boolean "private_entrance"
    t.boolean "sheets"
    t.boolean "work_space"
    t.boolean "fridge"
    t.boolean "dishes"
    t.boolean "utensil"
    t.boolean "cooker"
    t.boolean "balcony"
    t.boolean "backyard"
    t.boolean "carbon_monoxide_detector"
    t.boolean "hot_water"
    t.boolean "parking"
    t.boolean "long_stay"
    t.boolean "tumble_dryer"
    t.boolean "wi_fi"
    t.boolean "store"
    t.boolean "luggage"
    t.bigint "flat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_equipment_on_flat_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price_per_day"
    t.float "longitude"
    t.float "latitude"
    t.string "address"
    t.string "capacity"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_flats_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookings", "clients"
  add_foreign_key "bookings", "flats"
  add_foreign_key "equipment", "flats"
  add_foreign_key "flats", "users"
end
