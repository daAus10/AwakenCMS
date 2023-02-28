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

ActiveRecord::Schema[7.0].define(version: 2023_02_28_002615) do
  create_table "about_views", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "about_link"
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

  create_table "gallery_views", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "external_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hero_views", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "button"
    t.boolean "isVisible"
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

  create_table "service_categories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
