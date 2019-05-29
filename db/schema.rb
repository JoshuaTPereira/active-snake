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

ActiveRecord::Schema.define(version: 2019_05_29_161618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coordinates", force: :cascade do |t|
    t.integer "column_position", null: false
    t.integer "row_position", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["column_position", "row_position"], name: "index_coordinates_on_column_position_and_row_position", unique: true
  end

  create_table "directions", force: :cascade do |t|
    t.string "direction", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["direction"], name: "index_directions_on_direction", unique: true
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "snake_coordinates", force: :cascade do |t|
    t.bigint "snake_id", null: false
    t.bigint "coordinate_id", null: false
    t.boolean "head", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinate_id"], name: "index_snake_coordinates_on_coordinate_id"
    t.index ["snake_id"], name: "index_snake_coordinates_on_snake_id"
  end

  create_table "snakes", force: :cascade do |t|
    t.bigint "direction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id", null: false
    t.bigint "user_id", null: false
    t.index ["direction_id"], name: "index_snakes_on_direction_id"
    t.index ["game_id"], name: "index_snakes_on_game_id"
    t.index ["user_id"], name: "index_snakes_on_user_id"
  end

  create_table "user_games", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.index ["game_id"], name: "index_user_games_on_game_id"
    t.index ["user_id"], name: "index_user_games_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
