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

ActiveRecord::Schema.define(version: 20151116102646) do

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "secuirity_question"
    t.string   "secuirity_answer"
    t.string   "email"
    t.string   "phone"
    t.string   "level"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "reg_no"
    t.date     "founded"
    t.string   "headquarters"
    t.string   "ceo"
    t.string   "services"
    t.string   "email"
    t.string   "website"
    t.string   "logo_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "citizens", force: :cascade do |t|
    t.string   "name",       limit: 32
    t.text     "phone_num1"
    t.text     "phone_num2"
    t.text     "email"
    t.text     "address"
    t.string   "nat_id"
    t.datetime "created"
    t.datetime "updated"
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "transaction_type"
    t.integer  "amount"
    t.integer  "balance"
    t.date     "transaction_date"
    t.integer  "citizen_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "transactions", ["citizen_id"], name: "index_transactions_on_citizen_id"

end
