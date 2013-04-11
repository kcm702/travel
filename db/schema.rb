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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130408013005) do

  create_table "accommodations", :force => true do |t|
    t.string   "title"
    t.string   "reservation_number"
    t.date     "booking_start_date"
    t.date     "booking_end_date"
    t.string   "phone"
    t.string   "price"
    t.string   "additional_info"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.integer  "trip_id"
  end

  add_index "accommodations", ["trip_id"], :name => "index_accommodations_on_trip_id"
  add_index "accommodations", ["user_id"], :name => "index_accommodations_on_user_id"

  create_table "destinations", :force => true do |t|
    t.string   "location"
    t.date     "start_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.date     "end_date"
    t.integer  "user_id"
  end

  add_index "destinations", ["user_id"], :name => "index_destinations_on_user_id"

  create_table "hot_spots", :force => true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "address"
    t.string   "phone"
    t.string   "hours"
    t.string   "description"
    t.string   "link"
    t.string   "other"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.integer  "trip_id"
  end

  add_index "hot_spots", ["trip_id"], :name => "index_hot_spots_on_trip_id"
  add_index "hot_spots", ["user_id"], :name => "index_hot_spots_on_user_id"

  create_table "notes", :force => true do |t|
    t.string   "subject"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.integer  "trip_id"
  end

  add_index "notes", ["trip_id"], :name => "index_notes_on_trip_id"
  add_index "notes", ["user_id"], :name => "index_notes_on_user_id"

  create_table "trips", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
  end

  add_index "trips", ["user_id"], :name => "index_trips_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
