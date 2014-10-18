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

ActiveRecord::Schema.define(version: 20141018224447) do

  create_table "actors", force: true do |t|
    t.integer  "movie_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.integer  "number"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "cep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cinema_movies", force: true do |t|
    t.integer  "cinema_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cinemas", force: true do |t|
    t.string   "name"
    t.integer  "address_id"
    t.datetime "openTime"
    t.datetime "closeTime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "sunday"
    t.decimal  "monday"
    t.decimal  "tuesday"
    t.decimal  "wednesday"
    t.decimal  "thursday"
    t.decimal  "friday"
    t.decimal  "saturday"
    t.decimal  "holiday_price"
  end

  add_index "cinemas", ["address_id"], name: "index_cinemas_on_address_id"

  create_table "hours", force: true do |t|
    t.time     "hour"
    t.integer  "room_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "title"
    t.text     "synopsis"
    t.integer  "minimumAge"
    t.integer  "durationInMinutes"
    t.string   "director"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  create_table "photos", force: true do |t|
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url_file_name"
    t.string   "image_url_content_type"
    t.integer  "image_url_file_size"
    t.datetime "image_url_updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.integer  "cinema_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "videos", force: true do |t|
    t.integer  "movie_id"
    t.string   "video_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
