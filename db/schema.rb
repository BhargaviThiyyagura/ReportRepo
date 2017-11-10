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

ActiveRecord::Schema.define(version: 20170925070957) do

  create_table "SALES_TXN", id: false, force: :cascade do |t|
    t.decimal "sls_id", precision: 10, scale: 0, null: false
    t.decimal "sls_id_seq_num", precision: 5, scale: 0, null: false
    t.decimal "sls_qty", precision: 17, scale: 0
    t.decimal "sls_amt", precision: 19, scale: 4
  end

  create_table "all_reports", force: :cascade do |t|
    t.string "name", null: false
    t.string "yrmnth", null: false
    t.string "azure"
    t.string "link"
    t.string "approval", default: "Pending"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_summaries", force: :cascade do |t|
    t.string "sls_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_trends", id: false, force: :cascade do |t|
    t.date "sls_proc_wrk_dt"
    t.string "yr_mnth"
    t.string "program"
    t.string "company_code"
    t.string "program_type"
    t.string "splr_acct_id"
    t.string "splr_acct_nam"
    t.string "sap_sold_to"
    t.string "cust_chn_id"
    t.string "cust_chn_nam"
    t.string "segment"
    t.string "fill_dc_id"
    t.decimal "sls_qty", precision: 15, scale: 2
    t.decimal "sls_amt", precision: 15, scale: 2
    t.decimal "sdc", precision: 15, scale: 2
    t.decimal "wac", precision: 15, scale: 2
    t.decimal "sf", precision: 15, scale: 2
    t.decimal "ssf", precision: 15, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_trends_bak", id: false, force: :cascade do |t|
    t.date "sls_proc_wrk_dt"
    t.string "yr_mnth"
    t.string "program"
    t.string "company_code"
    t.string "program_type"
    t.string "splr_acct_id"
    t.string "splr_acct_nam"
    t.string "sap_sold_to"
    t.string "cust_chn_id"
    t.string "cust_chn_nam"
    t.string "segment"
    t.string "fill_dc_id"
    t.decimal "sls_qty", precision: 18, scale: 0
    t.decimal "sls_amt", precision: 18, scale: 0
    t.decimal "sdc", precision: 18, scale: 0
    t.decimal "wac", precision: 18, scale: 0
    t.decimal "sf", precision: 18, scale: 0
    t.decimal "ssf", precision: 18, scale: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_trends_bk", id: false, force: :cascade do |t|
    t.date "sls_proc_wrk_dt"
    t.string "yr_mnth"
    t.string "program"
    t.string "company_code"
    t.string "program_type"
    t.string "splr_acct_id"
    t.string "splr_acct_nam"
    t.string "sap_sold_to"
    t.string "cust_chn_id"
    t.string "cust_chn_nam"
    t.string "segment"
    t.string "fill_dc_id"
    t.decimal "sls_qty", precision: 18, scale: 0
    t.decimal "sls_amt", precision: 18, scale: 0
    t.decimal "sdc", precision: 18, scale: 0
    t.decimal "wac", precision: 18, scale: 0
    t.decimal "sf", precision: 18, scale: 0
    t.decimal "ssf", precision: 18, scale: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_txns", force: :cascade do |t|
    t.decimal "sls_id", precision: 18, scale: 0
    t.decimal "sls_id_seq_num", precision: 18, scale: 0
    t.decimal "sls_qty", precision: 18, scale: 0
    t.decimal "sls_amt", precision: 18, scale: 0
  end

  create_table "sl_quarantines", force: :cascade do |t|
    t.string "gcn", null: false
    t.integer "year_month", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "user"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
