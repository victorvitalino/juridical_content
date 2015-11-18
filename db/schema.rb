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

ActiveRecord::Schema.define(version: 20151118143001) do

  create_table "author_article_categories", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "status",          default: true
    t.boolean  "only_user",       default: false
    t.boolean  "only_subscribes", default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "author_article_comments", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "user_id"
    t.text     "content"
    t.integer  "like",       default: 0
    t.integer  "unlike",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "author_article_comments", ["article_id"], name: "index_author_article_comments_on_article_id"
  add_index "author_article_comments", ["user_id"], name: "index_author_article_comments_on_user_id"

  create_table "author_article_likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "author_article_likes", ["article_id"], name: "index_author_article_likes_on_article_id"
  add_index "author_article_likes", ["user_id"], name: "index_author_article_likes_on_user_id"

  create_table "author_articles", force: :cascade do |t|
    t.string   "title"
    t.text     "resume"
    t.text     "content"
    t.integer  "user_id"
    t.boolean  "publish",             default: false
    t.boolean  "revised",             default: false
    t.integer  "link_article_id"
    t.integer  "article_category_id"
    t.boolean  "only_subscribes",     default: false
    t.boolean  "only_users",          default: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "author_articles", ["article_category_id"], name: "index_author_articles_on_article_category_id"
  add_index "author_articles", ["user_id"], name: "index_author_articles_on_user_id"

  create_table "privileges", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "plan",       default: 0
    t.date     "expiration"
    t.boolean  "status",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "privileges", ["user_id"], name: "index_privileges_on_user_id"

  create_table "redactor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], name: "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_redactor_assetable_type"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "avatar"
    t.text     "bio"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "google_url"
    t.string   "external_url"
    t.integer  "user_type",              default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
