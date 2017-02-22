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

ActiveRecord::Schema.define(version: 20170222122307) do

  create_table "customer_types", force: :cascade do |t|
    t.string   "customertype", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customername",    limit: 255
    t.string   "customeraddress", limit: 255
    t.string   "phonenumber",     limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "inventory_item_type_categories", force: :cascade do |t|
    t.string   "ItemTypeCategory", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "inventory_items", force: :cascade do |t|
    t.string   "itemname",           limit: 255
    t.string   "model",              limit: 255
    t.text     "description",        limit: 65535
    t.integer  "unittypeid",         limit: 4
    t.integer  "qty",                limit: 4
    t.integer  "reorder",            limit: 4
    t.decimal  "purchasecost",                     precision: 10
    t.integer  "itemtypecategoryid", limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customerid",      limit: 4
    t.text     "shippingaddress", limit: 65535
    t.decimal  "discount",                      precision: 5, scale: 2, default: 0.0
    t.decimal  "tax",                           precision: 5, scale: 2, default: 0.0
    t.date     "deliverydate"
    t.date     "orderdate"
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
  end

  create_table "unit_types", force: :cascade do |t|
    t.string   "unittype",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
