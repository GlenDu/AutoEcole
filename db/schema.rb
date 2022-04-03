# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_31_202754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "time_slots"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_calendars_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.date "date"
    t.date "start_lesson"
    t.date "end_lesson"
    t.string "type_lesson"
    t.text "remark1"
    t.text "remark2"
    t.text "remark3"
    t.text "remark4"
    t.bigint "teachr_students_id"
    t.bigint "teachers_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teachers_id"], name: "index_lessons_on_teachers_id"
    t.index ["teachr_students_id"], name: "index_lessons_on_teachr_students_id"
  end

  create_table "profil_students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "year_birth"
    t.string "postal_code"
    t.integer "phone"
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_profil_students_on_student_id"
  end

  create_table "profile_teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_profile_teachers_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "account_active", default: true
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
  end

  create_table "teachr_students", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_teachr_students_on_student_id"
    t.index ["teacher_id"], name: "index_teachr_students_on_teacher_id"
  end

  add_foreign_key "calendars", "lessons"
  add_foreign_key "lessons", "teachers", column: "teachers_id"
  add_foreign_key "lessons", "teachr_students", column: "teachr_students_id"
  add_foreign_key "profil_students", "students"
  add_foreign_key "profile_teachers", "teachers"
  add_foreign_key "teachr_students", "students"
  add_foreign_key "teachr_students", "teachers"
end
