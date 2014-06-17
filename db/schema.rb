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

ActiveRecord::Schema.define(version: 20140617140832) do

  create_table "cases", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "work"
    t.string   "relation"
    t.string   "cname"
    t.string   "ename"
    t.string   "gender"
    t.date     "birthday"
    t.integer  "school_id"
    t.integer  "employee_id"
    t.integer  "record_id"
    t.integer  "source_id"
    t.string   "status"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name",       limit: 10
    t.string   "address"
    t.string   "contacts",   limit: 8
    t.string   "phone",      limit: 12
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
