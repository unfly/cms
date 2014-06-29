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

ActiveRecord::Schema.define(version: 20140628023036) do

  create_table "cases", force: true do |t|
    t.string   "name",        limit: 10
    t.string   "phone",       limit: 20
    t.string   "address"
    t.string   "work",        limit: 20
    t.string   "relation",    limit: 8
    t.string   "cname",       limit: 10
    t.string   "ename",       limit: 20
    t.string   "gender",      limit: 8
    t.date     "birthday"
    t.integer  "school_id"
    t.integer  "employee_id"
    t.integer  "source_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "name",            limit: 10
    t.string   "password_digest"
    t.string   "post",            limit: 8
    t.string   "cname",           limit: 10
    t.string   "phone",           limit: 14
    t.string   "idcard",          limit: 20
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: true do |t|
    t.string   "description"
    t.string   "status",      limit: 10
    t.integer  "case_id"
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

  create_table "sources", force: true do |t|
    t.string   "content",    limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
