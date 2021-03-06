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

ActiveRecord::Schema.define(version: 20150421000138) do

  create_table "abbreviations", force: :cascade do |t|
    t.string   "category",   limit: 255
    t.string   "abrv",       limit: 255
    t.string   "fullName",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "goalies", force: :cascade do |t|
    t.boolean  "playoffs",   limit: 1
    t.integer  "year",       limit: 4
    t.string   "player",     limit: 255
    t.integer  "age",        limit: 4
    t.string   "team",       limit: 255
    t.integer  "gp",         limit: 4
    t.integer  "w",          limit: 4
    t.integer  "l",          limit: 4
    t.integer  "ot",         limit: 4
    t.integer  "ga",         limit: 4
    t.integer  "sa",         limit: 4
    t.integer  "sv",         limit: 4
    t.decimal  "svp",                    precision: 10
    t.decimal  "gaa",                    precision: 10
    t.integer  "so",         limit: 4
    t.integer  "minutes",    limit: 4
    t.integer  "g",          limit: 4
    t.integer  "a",          limit: 4
    t.integer  "pts",        limit: 4
    t.integer  "pim",        limit: 4
    t.string   "firstname",  limit: 255
    t.string   "lastname",   limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "hofs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "year",       limit: 4
    t.string   "category",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "miscawards", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "award",      limit: 255
    t.integer  "year",       limit: 4
    t.string   "league",     limit: 255
    t.string   "note",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "seriesposts", force: :cascade do |t|
    t.integer  "year",             limit: 4
    t.string   "round",            limit: 255
    t.string   "series",           limit: 255
    t.string   "winnerTeam",       limit: 255
    t.string   "winnerTeamLeague", limit: 255
    t.string   "loserTeam",        limit: 255
    t.string   "loserTeamLeague",  limit: 255
    t.integer  "wins",             limit: 4
    t.integer  "losses",           limit: 4
    t.integer  "ties",             limit: 4
    t.integer  "winnersGoals",     limit: 4
    t.integer  "losersGoals",      limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "year",                    limit: 4
    t.string   "teamName",                limit: 255
    t.string   "leagueID",                limit: 255
    t.string   "teamID",                  limit: 255
    t.integer  "rank",                    limit: 4
    t.string   "playoff",                 limit: 255
    t.integer  "games",                   limit: 4
    t.integer  "wins",                    limit: 4
    t.integer  "losses",                  limit: 4
    t.integer  "ties",                    limit: 4
    t.integer  "overTimeLosses",          limit: 4
    t.integer  "points",                  limit: 4
    t.integer  "shootOutWins",            limit: 4
    t.integer  "shootOutLosses",          limit: 4
    t.integer  "goalsFor",                limit: 4
    t.integer  "goalsAgainst",            limit: 4
    t.integer  "pim",                     limit: 4
    t.integer  "powerPlayGoals",          limit: 4
    t.integer  "powerPlayChances",        limit: 4
    t.integer  "shorthandedGoalsAgainst", limit: 4
    t.integer  "powerPlayGoalsAgainst",   limit: 4
    t.integer  "penaltyKillChances",      limit: 4
    t.integer  "shorthandedGoalsFor",     limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "teamvsteams", force: :cascade do |t|
    t.integer  "year",         limit: 4
    t.string   "league",       limit: 255
    t.string   "team",         limit: 255
    t.string   "opposingTeam", limit: 255
    t.integer  "wins",         limit: 4
    t.integer  "losses",       limit: 4
    t.integer  "ties",         limit: 4
    t.integer  "otl",          limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
