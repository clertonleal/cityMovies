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

ActiveRecord::Schema.define(version: 20140420211832) do

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
    t.date     "openTime"
    t.date     "closeTime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "sunday"
    t.float    "monday"
    t.float    "tuesday"
    t.float    "wednesday"
    t.float    "thursday"
    t.float    "friday"
    t.float    "saturday"
  end

  add_index "cinemas", ["address_id"], name: "index_cinemas_on_address_id"

  create_table "movies", force: true do |t|
    t.string   "title"
    t.text     "synopsis"
    t.integer  "age"
    t.integer  "duration_in_minutes"
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
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.integer  "movie_id"
    t.string   "video_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
