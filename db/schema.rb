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

ActiveRecord::Schema[7.2].define(version: 2024_12_01_140402) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_interests_on_name", unique: true
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_skills_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "patronymic"
    t.integer "age"
    t.string "nationality"
    t.string "country"
    t.string "gender"
    t.string "full_name"
    t.string "surname"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "users_interests", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "interest_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interest_id"], name: "index_users_interests_on_interest_id"
    t.index ["user_id"], name: "index_users_interests_on_user_id"
  end

  create_table "users_skills", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_users_skills_on_skill_id"
    t.index ["user_id"], name: "index_users_skills_on_user_id"
  end

  add_foreign_key "users_interests", "interests"
  add_foreign_key "users_interests", "users"
  add_foreign_key "users_skills", "skills"
  add_foreign_key "users_skills", "users"
end