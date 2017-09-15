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

ActiveRecord::Schema.define(version: 20170915132629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "influencers", force: :cascade do |t|
    t.string   "name"
    t.string   "website_url"
    t.string   "instagram_url"
    t.string   "youtube_url"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "image"
  end

  create_table "outfit_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "outfit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["outfit_id"], name: "index_outfit_tags_on_outfit_id", using: :btree
    t.index ["tag_id"], name: "index_outfit_tags_on_tag_id", using: :btree
  end

  create_table "outfits", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "influencer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["influencer_id"], name: "index_outfits_on_influencer_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.integer  "outfit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["outfit_id"], name: "index_tags_on_outfit_id", using: :btree
  end

  create_table "trends", force: :cascade do |t|
    t.string   "image"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "outfit_tags", "outfits"
  add_foreign_key "outfit_tags", "tags"
  add_foreign_key "outfits", "influencers"
  add_foreign_key "tags", "outfits"
end
