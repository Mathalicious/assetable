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

ActiveRecord::Schema.define(version: 2014_02_20_053656) do

  create_table "assetable_asset_attachments", force: :cascade do |t|
    t.integer "asset_id"
    t.string "assetable_type"
    t.integer "assetable_id"
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "sort_order", default: 0
    t.index ["asset_id"], name: "index_assetable_asset_attachments_on_asset_id"
    t.index ["assetable_id"], name: "index_assetable_asset_attachments_on_assetable_id"
    t.index ["assetable_type", "assetable_id", "name"], name: "named_asset", unique: true
    t.index ["assetable_type", "assetable_id"], name: "polymorphic_asset"
  end

  create_table "assetable_assets", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.text "body"
    t.string "filename"
    t.string "checksum"
    t.string "path"
    t.string "content_type"
    t.integer "file_size"
    t.integer "width"
    t.integer "height"
    t.integer "duration"
    t.integer "bit_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float "ratio"
  end

  create_table "assetable_galleries", force: :cascade do |t|
    t.string "galleryable_type"
    t.integer "galleryable_id"
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["galleryable_id"], name: "index_assetable_galleries_on_galleryable_id"
    t.index ["galleryable_type", "galleryable_id", "name"], name: "named_gallery", unique: true
    t.index ["galleryable_type", "galleryable_id"], name: "polymorphic_gallery"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
