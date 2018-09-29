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

ActiveRecord::Schema.define(version: 20180929051153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer "exam_id"
    t.integer "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "is_correct"
  end

  create_table "challenge_answers", force: :cascade do |t|
    t.integer "challenge_id"
    t.integer "user_id"
    t.boolean "is_correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challenge_users", force: :cascade do |t|
    t.integer "challenge_id"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challenges", force: :cascade do |t|
    t.text "question"
    t.text "answer_description"
    t.text "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "question_summary"
    t.text "slug"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "quiz_id"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exams", force: :cascade do |t|
    t.integer "quiz_id"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "is_graded"
    t.boolean "is_canceled"
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "page_title"
    t.string "slug"
  end

  create_table "questions", force: :cascade do |t|
    t.text "body"
    t.text "answer"
    t.integer "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "description"
    t.integer "topic_id"
    t.string "slug"
    t.string "page_title"
    t.index ["slug"], name: "index_quizzes_on_slug"
  end

  create_table "section_questions", force: :cascade do |t|
    t.text "body"
    t.text "answer"
    t.string "section_name"
    t.integer "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "family_id"
    t.string "slug"
    t.integer "subject_id"
    t.index ["slug"], name: "index_topics_on_slug"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "role", default: "author"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.text "link"
    t.text "description"
    t.integer "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
