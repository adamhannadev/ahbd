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

ActiveRecord::Schema.define(version: 2018_12_23_154806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.bigint "student_id"
    t.datetime "lesson_date"
    t.text "plan"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "package_id"
    t.index ["package_id"], name: "index_lessons_on_package_id"
    t.index ["student_id"], name: "index_lessons_on_student_id"
  end

  create_table "packages", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "payment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lessons_purchased"
    t.boolean "active"
    t.index ["payment_id"], name: "index_packages_on_payment_id"
    t.index ["student_id"], name: "index_packages_on_student_id"
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "student_id"
    t.date "payment_date"
    t.string "payment_type"
    t.decimal "amount"
    t.string "account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["student_id"], name: "index_payments_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "lessons", "packages"
  add_foreign_key "lessons", "students"
  add_foreign_key "packages", "payments"
  add_foreign_key "packages", "students"
  add_foreign_key "payments", "students"
end
