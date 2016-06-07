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

ActiveRecord::Schema.define(version: 20160523031454) do

  create_table "dishes", force: :cascade do |t|
    t.text    "name"
    t.text    "type_of_dish"
    t.text    "main_ingredient"
    t.integer "serving_size"
    t.integer "event_id"
  end

  add_index "dishes", ["event_id"], name: "index_dishes_on_event_id"

  create_table "events", force: :cascade do |t|
    t.text   "date"
    t.text   "start_time"
    t.text   "end_time"
    t.text   "address"
    t.text   "phone"
    t.string "name"
  end

end