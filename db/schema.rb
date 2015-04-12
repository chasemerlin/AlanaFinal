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

ActiveRecord::Schema.define(version: 20150412191531) do

  create_table "hospital_bedsizes", force: :cascade do |t|
    t.string   "hospital_name"
    t.string   "city"
    t.string   "state"
    t.integer  "staffed_beds"
    t.integer  "total_discharges"
    t.integer  "patient_days"
    t.integer  "gross_patient_revenue"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "hospital_generals", force: :cascade do |t|
    t.string   "provider_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "county"
    t.string   "phone"
    t.string   "hospital_type"
    t.string   "ownership"
    t.string   "emergency"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "hospital_readmissions", force: :cascade do |t|
    t.string   "provider_id"
    t.string   "hospital_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "county_name"
    t.string   "phone_number"
    t.string   "measure_name"
    t.string   "measure_id"
    t.string   "compared_to_national"
    t.integer  "denominator"
    t.float    "score"
    t.float    "lower_estimate"
    t.float    "higher_estimate"
    t.string   "footnote"
    t.string   "measure_start_date"
    t.string   "measure_end_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "state_copds", force: :cascade do |t|
    t.string   "state"
    t.integer  "respondents"
    t.integer  "has_copd"
    t.float    "percentage"
    t.string   "ninety_five_percent_confidence_interval"
    t.string   "abbreviation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "zip_msas", force: :cascade do |t|
    t.string   "zip_code"
    t.string   "state_abbreviation"
    t.string   "msa_number"
    t.float    "gpci_one"
    t.float    "gpci_two"
    t.float    "gpci_three"
    t.string   "county_number"
    t.string   "msa_name"
    t.integer  "zip_population"
    t.integer  "msa_population"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
