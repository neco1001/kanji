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

ActiveRecord::Schema[7.0].define(version: 2022_06_21_022133) do
  create_table "kanji_characters", charset: "utf8mb4", force: :cascade do |t|
    t.string "character", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character"], name: "index_kanji_characters_on_character", unique: true
  end

  create_table "kanji_readings", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "kanji_character_id", null: false
    t.integer "type", null: false
    t.string "reading", null: false
    t.string "okurigana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kanji_character_id"], name: "index_kanji_readings_on_kanji_character_id"
  end

  add_foreign_key "kanji_readings", "kanji_characters"
end
