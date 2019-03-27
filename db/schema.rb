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

ActiveRecord::Schema.define(version: 2019_03_27_132434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.integer "group_type"
    t.datetime "deploy_date"
    t.integer "activity_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "batch_id"
    t.index ["batch_id"], name: "index_activities_on_batch_id"
  end

  create_table "batches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id"
    t.integer "number"
    t.index ["location_id"], name: "index_batches_on_location_id"
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "activity_id"
    t.index ["activity_id"], name: "index_groups_on_activity_id"
  end

  create_table "instructor_batches", force: :cascade do |t|
    t.bigint "instructor_id"
    t.bigint "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_instructor_batches_on_batch_id"
    t.index ["instructor_id"], name: "index_instructor_batches_on_instructor_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_batches", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_student_batches_on_batch_id"
    t.index ["student_id"], name: "index_student_batches_on_student_id"
  end

  create_table "student_groups", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_student_groups_on_group_id"
    t.index ["student_id"], name: "index_student_groups_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "github_username"
    t.integer "completed_lesson_count_for_active_track"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activities", "batches"
  add_foreign_key "batches", "locations"
  add_foreign_key "groups", "activities"
  add_foreign_key "instructor_batches", "batches"
  add_foreign_key "instructor_batches", "instructors"
  add_foreign_key "student_batches", "batches"
  add_foreign_key "student_batches", "students"
  add_foreign_key "student_groups", "groups"
  add_foreign_key "student_groups", "students"
end
