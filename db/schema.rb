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

ActiveRecord::Schema.define(version: 20190612063534) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "countries", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inputs", force: :cascade do |t|
    t.float "operating_income"
    t.float "revenues"
    t.float "invested_capital"
    t.float "total_assets"
    t.float "paid_in_capital"
    t.float "non_performing_loans_to_customers"
    t.float "long_term_debt"
    t.float "perished_inventory"
    t.integer "customer_satisfaction"
    t.integer "customers_acquired_last_month"
    t.integer "total_customers"
    t.integer "number_promotion_activities_last_month"
    t.integer "number_promotion_activities_next_month"
    t.float "utilities_expenses"
    t.float "rent"
    t.float "interest_expenses"
    t.float "taxes"
    t.float "consulting_expenses"
    t.float "other_indirect_costs"
    t.integer "number_of_employees"
    t.integer "yearly_working_days"
    t.float "monthly_contribution_margin"
    t.float "last_month_deferred_revenues"
    t.float "last_month_total_revenues"
    t.integer "total_deliveries"
    t.integer "late_deliveries"
    t.integer "non_compliant_deliveries"
    t.integer "monthly_employee_suggestions_received"
    t.float "monthly_revenues_new_products"
    t.float "monthly_education_hours_manager"
    t.float "monthly_education_hours_all_employees"
    t.string "reference_period"
    t.datetime "date_of_entry"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "notes"
    t.integer "inputs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "area_of_interest"
    t.text "status"
    t.text "action_plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.text "last_name"
    t.string "address"
    t.string "industry"
    t.integer "year_of_incorporation"
    t.integer "number_of_employees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "region"
    t.string "country"
    t.float "lat"
    t.float "lon"
    t.string "color"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
