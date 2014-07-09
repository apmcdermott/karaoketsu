# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140709220511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artist_taggings", ["artist_id"], name: "index_artist_taggings_on_artist_id", using: :btree
  add_index "artist_taggings", ["tag_id"], name: "index_artist_taggings_on_tag_id", using: :btree

  create_table "artists", force: true do |t|
    t.text     "name"
    t.text     "alt_name"
    t.text     "gender"
    t.integer  "range_low"
    t.integer  "range_high"
    t.text     "voice_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "song_taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "song_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "song_taggings", ["song_id"], name: "index_song_taggings_on_song_id", using: :btree
  add_index "song_taggings", ["tag_id"], name: "index_song_taggings_on_tag_id", using: :btree

  create_table "songs", force: true do |t|
    t.text     "title"
    t.integer  "artist_id"
    t.integer  "year"
    t.text     "key"
    t.text     "mode"
    t.integer  "range_low"
    t.integer  "range_high"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
