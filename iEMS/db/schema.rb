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

ActiveRecord::Schema.define(version: 20150415070257) do

  create_table "job_levels", force: :cascade do |t|
    t.string   "rank"
    t.string   "level"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_titles", force: :cascade do |t|
    t.string   "title"
    t.datetime "date_created"
    t.text     "description"
    t.integer  "jobLevel_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "job_titles", ["jobLevel_id"], name: "index_job_titles_on_jobLevel_id"

  create_table "official_businesses", force: :cascade do |t|
    t.string   "client"
    t.string   "dateStart"
    t.string   "dateEnd"
    t.string   "timeDeparture"
    t.string   "timeArrival"
    t.integer  "timeDuration"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
