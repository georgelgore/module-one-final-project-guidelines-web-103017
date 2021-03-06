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

ActiveRecord::Schema.define(version: 20171115152353) do

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "manaCost"
    t.string "cmc"
    t.string "color1"
    t.string "color2"
    t.string "types"
    t.string "subtype1"
    t.string "subtype2"
    t.text   "text"
    t.string "power"
    t.string "toughness"
  end

  create_table "deck_cards", force: :cascade do |t|
    t.integer "deck_id"
    t.integer "card_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
  end

  create_table "user_cards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "card_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
