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

ActiveRecord::Schema[7.0].define(version: 2023_04_12_034918) do
  create_table "about_views", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "about_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.date "date"
    t.string "email"
    t.text "special_needs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time"
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_appointments_on_employee_id"
  end

  create_table "contact_items", force: :cascade do |t|
    t.string "image"
    t.string "attachment"
    t.string "contactType"
    t.string "string"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_types", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_views", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "email"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_roles", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employee_roles_on_employee_id"
    t.index ["role_id"], name: "index_employee_roles_on_role_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "footer_views", force: :cascade do |t|
    t.string "brand_name"
    t.string "group_title"
    t.text "monday"
    t.text "tuesday"
    t.text "wednesday"
    t.text "thursday"
    t.text "friday"
    t.text "saturday"
    t.text "sunday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gallery_image_posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gallery_views", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "external_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "hero_views", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "button"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hot_new_views", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "isVisible"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hot_section_views", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "isVisible"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "karts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "map_views", force: :cascade do |t|
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "navbar_views", force: :cascade do |t|
    t.string "brand_name"
    t.string "link_name1"
    t.string "link_name2"
    t.string "link_name3"
    t.string "link_name4"
    t.string "services_link"
    t.string "gallery_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderables", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kart_id"
    t.integer "product_id", null: false
    t.integer "appointment_id"
    t.index ["appointment_id"], name: "index_orderables_on_appointment_id"
    t.index ["kart_id"], name: "index_orderables_on_kart_id"
    t.index ["product_id"], name: "index_orderables_on_product_id"
  end

  create_table "orederables", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "kart_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kart_id"], name: "index_orederables_on_kart_id"
    t.index ["product_id"], name: "index_orederables_on_product_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "time"
    t.text "description"
    t.decimal "price", precision: 5, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_category_id", null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "review_displays", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_views", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_categories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_items", force: :cascade do |t|
    t.string "service_name"
    t.integer "time"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_view_cards", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appointments", "employees"
  add_foreign_key "employee_roles", "employees"
  add_foreign_key "employee_roles", "roles"
  add_foreign_key "orderables", "karts"
  add_foreign_key "orderables", "products"
  add_foreign_key "orederables", "karts"
  add_foreign_key "orederables", "products"
  add_foreign_key "products", "product_categories"
end
