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

ActiveRecord::Schema.define(:version => 20130419124512) do

  create_table "meals", :force => true do |t|
    t.date     "meal_date"
    t.string   "food_type"
    t.integer  "meal_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "person_id",  :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "home_country"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "price_method"
    t.string   "price_category"
    t.string   "payment"
    t.string   "child_care"
    t.string   "child_age"
    t.string   "child_language"
    t.string   "reference_number"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "registration_id"
  end

  create_table "programs", :force => true do |t|
    t.string   "program_name_hu"
    t.string   "program_name_en"
    t.integer  "price_full"
    t.integer  "price_member"
    t.integer  "price_discount"
    t.integer  "exchange_rate"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "registrations", :force => true do |t|
    t.datetime "registration_date"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "person_id",         :null => false
    t.integer  "program_id",        :null => false
  end

end
