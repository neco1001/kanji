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
  create_table "kanas", charset: "latin1", force: :cascade do |t|
    t.bigint "kanji_id", null: false
    t.integer "type", null: false
    t.string "yomigana", null: false
    t.string "okurigana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kanji_id"], name: "index_kanas_on_kanji_id"
  end

  create_table "kanjis", charset: "latin1", force: :cascade do |t|
    t.string "character", null: false
    t.integer "school_year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character"], name: "index_kanjis_on_character", unique: true
  end

  add_foreign_key "kanas", "kanjis"
end
