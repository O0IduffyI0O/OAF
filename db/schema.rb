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

ActiveRecord::Schema.define(version: 2018_11_20_110513) do

  create_table "offers", force: :cascade do |t|
    t.string "client_name"
    t.string "email"
    t.string "mobile"
    t.string "delivery_address"
    t.string "postcode"
    t.text "order_description"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "project_id"
    t.integer "n_workers_male"
    t.integer "n_workers_female"
    t.integer "n_office_staff"
    t.integer "price"
    t.text "comment"
    t.index ["project_id"], name: "index_orders_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "contractor"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
