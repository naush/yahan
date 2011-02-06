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

ActiveRecord::Schema.define(:version => 20110206211031) do

  create_table "admins", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "dialects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "handshapes", :force => true do |t|
    t.string   "finger"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_id"
  end

  create_table "images", :force => true do |t|
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "attach_to"
  end

  create_table "movements", :force => true do |t|
    t.string   "url"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_id"
  end

  create_table "orientations", :force => true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_id"
  end

  create_table "positions", :force => true do |t|
    t.string   "hand"
    t.string   "url"
    t.integer  "sign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_id"
  end

  create_table "signs", :force => true do |t|
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "word_id"
    t.integer  "left_handshape_id"
    t.integer  "right_handshape_id"
    t.integer  "left_orientation_id"
    t.integer  "right_orientation_id"
    t.integer  "position_id"
    t.integer  "movement_id"
  end

  create_table "words", :force => true do |t|
    t.string   "text"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dialect_id"
  end

end
