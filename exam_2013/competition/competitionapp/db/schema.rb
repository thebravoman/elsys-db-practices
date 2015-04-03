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

ActiveRecord::Schema.define(:version => 20130411203335) do

  create_table "competitions", :force => true do |t|
    t.datetime "date"
    t.string   "place"
    t.float    "budget"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "competitions_judges", :id => false, :force => true do |t|
    t.integer "competition_id"
    t.integer "judge_id"
  end

  create_table "competitions_sponsors", :id => false, :force => true do |t|
    t.integer "competition_id"
    t.integer "sponsor_id"
  end

  create_table "competitions_teams", :id => false, :force => true do |t|
    t.integer "competition_id"
    t.integer "team_id"
  end

  create_table "judges", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mentors", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.float    "experience_in_years"
    t.integer  "number_of_years_mentor"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "mentors_teams", :id => false, :force => true do |t|
    t.integer "mentor_id"
    t.integer "team_id"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.float    "donated"
    t.integer  "years_participating"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students_teams", :id => false, :force => true do |t|
    t.integer "student_id"
    t.integer "team_id"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.boolean  "payed"
    t.integer  "years_experience"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
