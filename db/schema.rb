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

ActiveRecord::Schema[7.0].define(version: 2023_03_09_234858) do
  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clues", force: :cascade do |t|
    t.string "content"
    t.integer "mystery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mystery_id"], name: "index_clues_on_mystery_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.integer "mystery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mystery_id"], name: "index_customers_on_mystery_id"
  end

  create_table "hinters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hints", force: :cascade do |t|
    t.string "info"
    t.integer "hinter_id", null: false
    t.integer "mystery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hinter_id"], name: "index_hints_on_hinter_id"
    t.index ["mystery_id"], name: "index_hints_on_mystery_id"
  end

  create_table "mysteries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "note"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "user_clues", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "clue_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clue_id"], name: "index_user_clues_on_clue_id"
    t.index ["user_id"], name: "index_user_clues_on_user_id"
  end

  create_table "user_hints", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "hint_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hint_id"], name: "index_user_hints_on_hint_id"
    t.index ["user_id"], name: "index_user_hints_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "character_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clues", "mysteries"
  add_foreign_key "customers", "mysteries"
  add_foreign_key "hints", "hinters"
  add_foreign_key "hints", "mysteries"
  add_foreign_key "notes", "users"
  add_foreign_key "user_clues", "clues"
  add_foreign_key "user_clues", "users"
  add_foreign_key "user_hints", "hints"
  add_foreign_key "user_hints", "users"
end
