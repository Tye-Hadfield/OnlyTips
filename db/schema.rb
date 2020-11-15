# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_12_232217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "horses", force: :cascade do |t|
    t.string "horse_name"
    t.integer "horse_number"
    t.string "jockey"
    t.string "trainer"
    t.integer "current_win"
    t.integer "current_places"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "horses_races", id: false, force: :cascade do |t|
    t.bigint "horse_id", null: false
    t.bigint "race_id", null: false
    t.index ["horse_id", "race_id"], name: "index_horses_races_on_horse_id_and_race_id"
    t.index ["race_id", "horse_id"], name: "index_horses_races_on_race_id_and_horse_id"
  end

  create_table "race_courses", force: :cascade do |t|
    t.string "race_course_name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.date "race_date"
    t.bigint "race_course_id", null: false
    t.integer "race_number"
    t.integer "race_length"
    t.float "prize_money"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["race_course_id"], name: "index_races_on_race_course_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "tips", force: :cascade do |t|
    t.bigint "race_id", null: false
    t.bigint "user_id", null: false
    t.bigint "race_course_id", null: false
    t.bigint "horse_id", null: false
    t.string "result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["horse_id"], name: "index_tips_on_horse_id"
    t.index ["race_course_id"], name: "index_tips_on_race_course_id"
    t.index ["race_id"], name: "index_tips_on_race_id"
    t.index ["user_id"], name: "index_tips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "races", "race_courses"
  add_foreign_key "tips", "horses"
  add_foreign_key "tips", "race_courses"
  add_foreign_key "tips", "races"
  add_foreign_key "tips", "users"
end
