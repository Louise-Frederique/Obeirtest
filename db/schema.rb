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

ActiveRecord::Schema.define(version: 20160411185724) do

  create_table "choices", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
    t.integer  "weight"
  end

  add_index "choices", ["question_id"], name: "index_choices_on_question_id"

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "survey_id"
    t.integer  "trend_id"
  end

  add_index "questions", ["trend_id"], name: "index_questions_on_trend_id"

  create_table "reponses", force: :cascade do |t|
    t.integer  "choice_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "survey_reponse_id"
  end

  add_index "reponses", ["choice_id"], name: "index_reponses_on_choice_id"
  add_index "reponses", ["survey_reponse_id"], name: "index_reponses_on_survey_reponse_id"

  create_table "survey_reponses", force: :cascade do |t|
    t.integer  "trend_id"
    t.integer  "total"
    t.integer  "user_id"
    t.integer  "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "survey_reponses", ["survey_id"], name: "index_survey_reponses_on_survey_id"
  add_index "survey_reponses", ["trend_id"], name: "index_survey_reponses_on_trend_id"
  add_index "survey_reponses", ["user_id"], name: "index_survey_reponses_on_user_id"

  create_table "surveys", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trends", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firtsname"
    t.string   "lastname"
    t.string   "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
