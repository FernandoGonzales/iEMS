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

ActiveRecord::Schema.define(version: 20150416130657) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "add_street"
    t.string   "add_city"
    t.string   "add_zip"
    t.string   "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_levels", force: :cascade do |t|
    t.string   "rank"
    t.string   "level"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_titles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "official_businesses", force: :cascade do |t|
    t.string   "client"
    t.integer  "timeDuration"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "description"
    t.string   "requestType"
    t.string   "status"
    t.datetime "datetimeDeparture"
    t.datetime "datetimeArrival"
    t.date     "dateFiled"
  end

end
