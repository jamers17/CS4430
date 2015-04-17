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

ActiveRecord::Schema.define(version: 20150417045348) do

  create_table "goalies", id: false, force: :cascade do |t|
    t.boolean  "playoffs",   limit: 1
    t.date     "year"
    t.text     "player",     limit: 65535
    t.integer  "age",        limit: 4
    t.integer  "gp",         limit: 4
    t.integer  "w",          limit: 4
    t.integer  "l",          limit: 4
    t.integer  "ot",         limit: 4
    t.integer  "ga",         limit: 4
    t.integer  "sa",         limit: 4
    t.integer  "sv",         limit: 4
    t.decimal  "svp",                      precision: 8, scale: 3
    t.decimal  "gaa",                      precision: 8, scale: 2
    t.integer  "so",         limit: 4
    t.integer  "minutes",    limit: 4
    t.integer  "g",          limit: 4
    t.integer  "a",          limit: 4
    t.integer  "pts",        limit: 4
    t.integer  "pim",        limit: 4
    t.string   "firstname",  limit: 255
    t.string   "lastname",   limit: 255
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

end
