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

ActiveRecord::Schema.define(version: 20181122041255) do

  create_table "awards", force: :cascade do |t|
    t.string "award_name"
    t.text "award_details"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_awards_on_profile_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string "start_study"
    t.string "year_graduated"
    t.string "course"
    t.string "school"
    t.text "course_description"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_educations_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "position"
    t.text "address"
    t.string "mobile"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsibilities", force: :cascade do |t|
    t.string "list_of_responsibility"
    t.integer "work_experience_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_experience_id"], name: "index_responsibilities_on_work_experience_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill_name"
    t.string "skill_mastery"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_skills_on_profile_id"
  end

  create_table "socials", force: :cascade do |t|
    t.string "social_media_icon"
    t.string "social_media_name"
    t.string "social_media_url"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_socials_on_profile_id"
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string "start_year"
    t.string "end_year"
    t.string "work_position"
    t.text "work_description"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_work_experiences_on_profile_id"
  end

end
