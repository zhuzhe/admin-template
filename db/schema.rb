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

ActiveRecord::Schema.define(version: 20131110175523) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.string   "content"
    t.date     "start_time"
    t.date     "end_time"
    t.integer  "author"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "consume_type_id"
    t.integer  "consume_amount",  default: 0
  end

  create_table "bussinesses", force: true do |t|
    t.string   "name"
    t.date     "join_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumers", force: true do |t|
    t.string   "phone"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "consumer_id"
    t.integer  "activity_id"
    t.integer  "ticket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "consume_type",   default: 0
    t.integer  "consume_amount", default: 0
  end

  create_table "rewards", force: true do |t|
    t.string   "name"
    t.string   "desc"
    t.string   "photo"
    t.integer  "amount",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "activity_id"
    t.string   "photo_url_file_name"
    t.string   "photo_url_content_type"
    t.integer  "photo_url_file_size"
    t.datetime "photo_url_updated_at"
    t.float    "rate",                   default: 0.0
    t.string   "address"
    t.integer  "business_id"
    t.string   "conversion_time"
    t.integer  "bussiness_id"
  end

  create_table "tickets", force: true do |t|
    t.string   "uid"
    t.integer  "consumer_id"
    t.integer  "reward_id"
    t.date     "used_time"
    t.boolean  "is_used"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "activity_id"
    t.string   "phone"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
