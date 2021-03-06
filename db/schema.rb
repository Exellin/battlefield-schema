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

ActiveRecord::Schema.define(version: 20171103190932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clans", force: :cascade do |t|
    t.string "clan_name"
    t.string "website"
    t.string "abbreviation"
    t.string "encrypted_password"
    t.boolean "open_for_applications"
    t.string "emblem_url"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.integer "competition"
    t.integer "competition_region"
    t.string "competition_name"
    t.integer "competition_type"
    t.integer "roster_types"
    t.integer "game_mode"
    t.integer "number_of_teams"
    t.integer "registration"
    t.integer "seed"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "score_reporting"
    t.integer "roster_size_type"
    t.integer "min_roster_size"
    t.integer "max_roster_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lineup_users", force: :cascade do |t|
    t.bigint "lineup_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lineup_id"], name: "index_lineup_users_on_lineup_id"
    t.index ["user_id"], name: "index_lineup_users_on_user_id"
  end

  create_table "lineups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "match_id", null: false
    t.index ["match_id"], name: "index_lineups_on_match_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "game_mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nation_moderators", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "nation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nation_id"], name: "index_nation_moderators_on_nation_id"
    t.index ["user_id"], name: "index_nation_moderators_on_user_id"
  end

  create_table "nations", force: :cascade do |t|
    t.string "nation_name"
    t.string "abbreviation"
    t.string "small_flag_file_name"
    t.string "small_flag_content_type"
    t.integer "small_flag_file_size"
    t.datetime "small_flag_updated_at"
    t.string "large_flag_file_name"
    t.string "large_flag_content_type"
    t.integer "large_flag_file_size"
    t.datetime "large_flag_updated_at"
    t.string "emblem_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platoons", force: :cascade do |t|
    t.string "platoon_name"
    t.bigint "nation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nation_id"], name: "index_platoons_on_nation_id"
  end

  create_table "roster_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "roster_id", null: false
    t.boolean "team_leader", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["roster_id"], name: "index_roster_users_on_roster_id"
    t.index ["user_id"], name: "index_roster_users_on_user_id"
  end

  create_table "rosters", force: :cascade do |t|
    t.string "roster_name"
    t.integer "game_mode"
    t.integer "owner_id", null: false
    t.string "owner_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "competition_id"
    t.integer "match_id"
    t.index ["competition_id"], name: "index_rosters_on_competition_id"
    t.index ["match_id"], name: "index_rosters_on_match_id"
    t.index ["owner_id", "owner_type"], name: "index_rosters_on_owner_id_and_owner_type"
  end

  create_table "statistics", force: :cascade do |t|
    t.decimal "kda"
    t.integer "ranking"
    t.integer "games_played"
    t.integer "leaves"
    t.integer "wins"
    t.integer "losses"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_statistics_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.integer "clan_id"
    t.integer "nation_id"
    t.index ["clan_id"], name: "index_users_on_clan_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nation_id"], name: "index_users_on_nation_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "lineup_users", "lineups"
  add_foreign_key "lineup_users", "users"
  add_foreign_key "lineups", "matches"
  add_foreign_key "nation_moderators", "nations"
  add_foreign_key "nation_moderators", "users"
  add_foreign_key "platoons", "nations"
  add_foreign_key "roster_users", "rosters"
  add_foreign_key "roster_users", "users"
  add_foreign_key "statistics", "users"
end
