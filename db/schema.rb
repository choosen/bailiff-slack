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

ActiveRecord::Schema.define(version: 20170216082745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "debts", force: :cascade do |t|
    t.decimal  "amount",      precision: 8, scale: 2, null: false
    t.integer  "debtor_id",                           null: false
    t.integer  "creditor_id",                         null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["creditor_id"], name: "index_debts_on_creditor_id", using: :btree
    t.index ["debtor_id"], name: "index_debts_on_debtor_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.decimal  "amount",      precision: 8, scale: 2, null: false
    t.integer  "debtor_id",                           null: false
    t.integer  "creditor_id",                         null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["creditor_id"], name: "index_payments_on_creditor_id", using: :btree
    t.index ["debtor_id"], name: "index_payments_on_debtor_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",         null: false
    t.integer  "slack_number", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["slack_number"], name: "index_users_on_slack_number", unique: true, using: :btree
  end

  add_foreign_key "debts", "users", column: "creditor_id"
  add_foreign_key "debts", "users", column: "debtor_id"
  add_foreign_key "payments", "users", column: "creditor_id"
  add_foreign_key "payments", "users", column: "debtor_id"
end
