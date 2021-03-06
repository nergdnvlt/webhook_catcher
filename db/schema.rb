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

ActiveRecord::Schema.define(version: 2019_01_03_230633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "monthly_licenses", force: :cascade do |t|
    t.jsonb "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "license_key"
  end

  create_table "monthly_subscriptions", force: :cascade do |t|
    t.jsonb "data"
    t.string "sub_id"
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_id"], name: "index_monthly_subscriptions_on_sub_id", unique: true
  end

  create_table "payouts", force: :cascade do |t|
    t.string "webhook_id"
    t.string "order_id"
    t.string "reference"
    t.string "account"
    t.string "subscriptions"
    t.float "tax"
    t.float "tax_percentage"
    t.float "fastspring_fee"
    t.string "payee"
    t.float "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yearly_licenses", force: :cascade do |t|
    t.jsonb "data"
    t.string "license_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yearly_subscriptions", force: :cascade do |t|
    t.jsonb "data"
    t.string "sub_id"
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_id"], name: "index_yearly_subscriptions_on_sub_id", unique: true
  end

end
