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

ActiveRecord::Schema.define(version: 20150420015401) do

  create_table "business_units", force: :cascade do |t|
    t.string   "name"
    t.integer  "manager_id"
    t.integer  "supervisor_id"
    t.integer  "oic"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

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
    t.integer  "jobLevel_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "job_titles", ["jobLevel_id"], name: "index_job_titles_on_jobLevel_id"

  create_table "leave_requests", force: :cascade do |t|
    t.string   "leave_type"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ob_requests", force: :cascade do |t|
    t.string   "client"
    t.string   "branch"
    t.datetime "datetime_departure"
    t.datetime "datetime_arrival"
    t.integer  "request_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "offset_requests", force: :cascade do |t|
    t.date     "offset_date"
    t.decimal  "offset_count"
    t.integer  "request_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ot_requests", force: :cascade do |t|
    t.date     "ot_date"
    t.time     "time_start"
    t.time     "time_end"
    t.integer  "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string   "request_type"
    t.string   "status"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ut_requests", force: :cascade do |t|
    t.date     "ut_date"
    t.time     "time_start"
    t.time     "time_end"
    t.integer  "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
