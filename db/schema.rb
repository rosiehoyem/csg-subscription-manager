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

ActiveRecord::Schema.define(version: 20140619043403) do

  create_table "solar_gardens", force: true do |t|
    t.string   "size"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.string   "operator"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "account_number"
    t.string   "property_address"
    t.string   "property_city"
    t.string   "property_state"
    t.string   "property_zip"
    t.string   "subscription_size"
    t.string   "email"
    t.string   "phone"
    t.string   "secondary_contact"
    t.string   "secondary_phone"
    t.string   "secondary_email"
    t.string   "payment_details"
    t.integer  "solar_garden_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscribers", ["solar_garden_id"], name: "index_subscribers_on_solar_garden_id"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
