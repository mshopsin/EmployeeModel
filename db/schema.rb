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

ActiveRecord::Schema.define(:version => 20130411234502) do

  create_table "employee_profiles", :force => true do |t|
    t.integer  "employee_id"
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "height"
    t.integer  "age"
    t.string   "favorite_food"
    t.string   "favorite_date_week"
    t.date     "birthdate"
    t.integer  "salary"
    t.string   "photo"
  end

  add_index "employee_profiles", ["name"], :name => "index_employee_profiles_on_name", :unique => true

  create_table "employees", :force => true do |t|
    t.integer  "employee_profile_id"
    t.integer  "supervisor_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "team_memberships", :force => true do |t|
    t.integer  "team_id"
    t.integer  "employee_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "supervisor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
