class CreateInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :inputs do |t|
      t.float :operating_income
      t.float :revenues
      t.float :invested_capital
      t.float :total_assets
      t.float :paid_in_capital
      t.float :non_performing_loans_to_customers
      t.float :long_term_debt
      t.float :perished_inventory
      t.integer :customer_satisfaction
      t.integer :customers_acquired_last_month
      t.integer :total_customers
      t.integer :number_promotion_activities_last_month
      t.integer :number_promotion_activities_next_month
      t.float :utilities_expenses
      t.float :rent
      t.float :interest_expenses
      t.float :taxes
      t.float :consulting_expenses
      t.float :other_indirect_costs
      t.integer :number_of_employees
      t.integer :yearly_working_days
      t.float :monthly_contribution_margin
      t.float :last_month_deferred_revenues
      t.float :last_month_total_revenues
      t.integer :total_deliveries
      t.integer :late_deliveries
      t.integer :non_compliant_deliveries
      t.integer :monthly_employee_suggestions_received
      t.float :monthly_revenues_new_products
      t.float :monthly_education_hours_manager
      t.float :monthly_education_hours_all_employees
      t.string :reference_period
      t.datetime :date_of_entry
      t.integer :user_id

      t.timestamps
    end
  end
end
