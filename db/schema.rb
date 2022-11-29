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

ActiveRecord::Schema[7.0].define(version: 2022_11_29_044838) do
  create_table "vendor_transactions", force: :cascade do |t|
    t.integer "workspace_vendor_id", null: false
    t.string "description"
    t.integer "amount_in_cents"
    t.datetime "transaction_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workspace_vendor_id"], name: "index_vendor_transactions_on_workspace_vendor_id"
  end

  create_table "workspace_members", force: :cascade do |t|
    t.integer "workspace_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workspace_id"], name: "index_workspace_members_on_workspace_id"
  end

  create_table "workspace_vendors", force: :cascade do |t|
    t.integer "workspace_id", null: false
    t.string "name"
    t.string "description"
    t.string "website"
    t.string "domain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workspace_id"], name: "index_workspace_vendors_on_workspace_id"
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "name"
    t.string "domain"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "vendor_transactions", "workspace_vendors"
  add_foreign_key "workspace_members", "workspaces"
  add_foreign_key "workspace_vendors", "workspaces"
end
