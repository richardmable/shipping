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

ActiveRecord::Schema.define(version: 20160114190100) do

  create_table "boats", force: :cascade do |t|
    t.integer  "container_limit"
    t.string   "name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.boolean  "at_sea"
    t.string   "port"
    t.integer  "current_work_order_id"
  end

  create_table "containers", force: :cascade do |t|
    t.integer  "work_order_id"
    t.integer  "weight"
    t.integer  "cargo_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "port_manager_boats", force: :cascade do |t|
    t.integer  "port_manager_id"
    t.integer  "boat_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "port_managers", force: :cascade do |t|
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salesman_boats", force: :cascade do |t|
    t.integer  "sales_man_id"
    t.integer  "boat_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "salesmen", force: :cascade do |t|
    t.string   "territory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_orders", force: :cascade do |t|
    t.string   "origin"
    t.string   "destination"
    t.integer  "containers"
    t.integer  "boat_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "complete"
    t.integer  "salesman_id"
  end

end
