ActiveAdmin.register Input do
  permit_params :operating_income, :revenues, :invested_capital, :total_assets, :paid_in_capital, :non_performing_loans_to_customers, :long_term_debt, :perished_inventory, :customer_satisfaction, :customers_acquired_last_month, :total_customers, :number_promotion_activities_last_month, :number_promotion_activities_next_month, :utilities_expenses, :rent, :interest_expenses, :taxes, :consulting_expenses, :other_indirect_costs, :number_of_employees, :yearly_working_days, :monthly_contribution_margin, :last_month_deferred_revenues, :last_month_total_revenues, :total_deliveries, :late_deliveries, :non_compliant_deliveries, :monthly_employee_suggestions_received, :monthly_revenues_new_products, :monthly_education_hours_manager, :monthly_education_hours_all_employees, :reference_period, :date_of_entry, :user_id

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
