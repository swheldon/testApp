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

ActiveRecord::Schema.define(version: 20180515203054) do

  create_table "estates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "estate_address"
    t.text "area"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "square_footage"
    t.integer "rent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "last_name"
    t.text "first_name"
    t.text "address"
    t.text "phone_number"
    t.text "email"
    t.text "employment_status"
    t.integer "tenant_count"
    t.text "move_in_date"
    t.integer "term_months"
    t.text "furnished"
    t.text "lead_source"
    t.text "special_requirements"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
