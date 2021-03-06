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

ActiveRecord::Schema.define(:version => 20120818114927) do

  create_table "authentications", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "authentications", ["provider"], :name => "index_authentications_on_provider"
  add_index "authentications", ["uid"], :name => "index_authentications_on_uid"

  create_table "billing_records", :force => true do |t|
    t.date     "date"
    t.decimal  "amount",      :precision => 8, :scale => 2
    t.string   "comment"
    t.integer  "category_id"
    t.integer  "user_id"
    t.integer  "type_cd"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "billing_records", ["category_id"], :name => "index_billing_records_on_category_id"
  add_index "billing_records", ["type_cd"], :name => "index_billing_records_on_type_cd"
  add_index "billing_records", ["user_id"], :name => "index_billing_records_on_user_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "ancestry"
  end

  add_index "categories", ["name"], :name => "index_categories_on_name"

  create_table "users", :force => true do |t|
    t.string   "nickname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.decimal  "balance",                :precision => 8, :scale => 2, :default => 0.0
    t.datetime "created_at",                                                            :null => false
    t.datetime "updated_at",                                                            :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"

end
