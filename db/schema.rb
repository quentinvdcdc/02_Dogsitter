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

ActiveRecord::Schema.define(version: 2019_01_31_133632) do

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs_strolls", id: false, force: :cascade do |t|
    t.integer "stroll_id", null: false
    t.integer "dog_id", null: false
    t.index ["dog_id", "stroll_id"], name: "index_dogs_strolls_on_dog_id_and_stroll_id"
    t.index ["stroll_id", "dog_id"], name: "index_dogs_strolls_on_stroll_id_and_dog_id"
  end

  create_table "dogsitters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strolls", force: :cascade do |t|
    t.datetime "date"
    t.integer "dogsitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dogsitter_id"], name: "index_strolls_on_dogsitter_id"
  end

end
