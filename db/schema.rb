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

ActiveRecord::Schema.define(version: 20161105200345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affirmations", force: :cascade do |t|
    t.string   "prompt"
    t.string   "response"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "affirmations", ["user_id"], name: "index_affirmations_on_user_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "morning_affirmations", force: :cascade do |t|
    t.boolean  "completed"
    t.integer  "morning_id"
    t.integer  "affirmation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "morning_affirmations", ["affirmation_id"], name: "index_morning_affirmations_on_affirmation_id", using: :btree
  add_index "morning_affirmations", ["morning_id"], name: "index_morning_affirmations_on_morning_id", using: :btree

  create_table "mornings", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mornings", ["user_id"], name: "index_mornings_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "affirmations", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "morning_affirmations", "affirmations"
  add_foreign_key "morning_affirmations", "mornings"
  add_foreign_key "mornings", "users"
end
