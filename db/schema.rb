# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150326053008) do

  create_table "comments", force: true do |t|
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "wall_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id"
  add_index "comments", ["wall_id"], name: "index_comments_on_wall_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "walls", force: true do |t|
    t.text     "post"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "walls", ["user_id"], name: "index_walls_on_user_id"

end
