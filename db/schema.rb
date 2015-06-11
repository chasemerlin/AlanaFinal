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

ActiveRecord::Schema.define(version: 20150611192611) do

  create_table "fines", force: :cascade do |t|
    t.string   "hospital_name"
    t.integer  "staffed_beds"
    t.integer  "total_payments"
    t.integer  "copd_total"
    t.decimal  "copd_ratio"
    t.integer  "ami_total"
    t.decimal  "ami_ratio"
    t.integer  "pneumonia_total"
    t.decimal  "pneumonia_ratio"
    t.integer  "hip_knee_total"
    t.decimal  "hip_knee_ratio"
    t.integer  "hf_total"
    t.decimal  "hf_ratio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "health_plans", id: false, force: :cascade do |t|
    t.integer  "mco_id"
    t.string   "mco_name"
    t.string   "mco_owner"
    t.integer  "owner_id"
    t.string   "address"
    t.string   "city"
    t.string   "state_abbreviation"
    t.string   "zip"
    t.string   "url"
    t.string   "profit_status"
    t.string   "private_public"
    t.string   "telephone_one"
    t.string   "telephone_two"
    t.string   "fax"
    t.string   "contracted_pbm"
    t.string   "contracted_sp_vendor"
    t.string   "service_areas"
    t.string   "aliases"
    t.string   "provider_sponsored"
    t.string   "blues"
    t.integer  "al"
    t.integer  "ak"
    t.integer  "ar"
    t.integer  "az"
    t.integer  "ca"
    t.integer  "co"
    t.integer  "ct"
    t.integer  "dc"
    t.integer  "de"
    t.integer  "fl"
    t.integer  "ga"
    t.integer  "hi"
    t.integer  "ia"
    t.integer  "indiana"
    t.integer  "il"
    t.integer  "in"
    t.integer  "ks"
    t.integer  "ky"
    t.integer  "la"
    t.integer  "ma"
    t.integer  "me"
    t.integer  "mi"
    t.integer  "md"
    t.integer  "mn"
    t.integer  "ms"
    t.integer  "mo"
    t.integer  "mt"
    t.integer  "nc"
    t.integer  "nd"
    t.integer  "ne"
    t.integer  "nh"
    t.integer  "nj"
    t.integer  "nm"
    t.integer  "nv"
    t.integer  "ny"
    t.integer  "oh"
    t.integer  "ok"
    t.integer  "or"
    t.integer  "pa"
    t.integer  "ri"
    t.integer  "sc"
    t.integer  "sd"
    t.integer  "tn"
    t.integer  "tx"
    t.integer  "ut"
    t.integer  "va"
    t.integer  "vt"
    t.integer  "wa"
    t.integer  "wi"
    t.integer  "wv"
    t.integer  "wy"
    t.integer  "pr"
    t.integer  "foreign"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

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

  create_table "medicare_advantages", force: :cascade do |t|
    t.string   "state"
    t.string   "state_abbreviation"
    t.string   "organization_name"
    t.integer  "enrolled"
    t.integer  "total_state_ma_enrollment"
    t.float    "market_share_in_state"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "snifs", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "mcr_rating"
    t.integer  "beds_capacity"
    t.boolean  "medicare"
    t.boolean  "medicaid"
    t.float    "percentage_occupied"
    t.integer  "beds_unavailable"
    t.integer  "beds_available"
    t.string   "in_hospital"
    t.integer  "population"
    t.string   "corporation"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
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
