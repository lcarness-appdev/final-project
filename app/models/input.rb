# == Schema Information
#
# Table name: inputs
#
#  id                                     :integer          not null, primary key
#  operating_income                       :float
#  revenues                               :float
#  invested_capital                       :float
#  total_assets                           :float
#  paid_in_capital                        :float
#  non_performing_loans_to_customers      :float
#  long_term_debt                         :float
#  perished_inventory                     :float
#  customer_satisfaction                  :integer
#  customers_acquired_last_month          :integer
#  total_customers                        :integer
#  number_promotion_activities_last_month :integer
#  number_promotion_activities_next_month :integer
#  utilities_expenses                     :float
#  rent                                   :float
#  interest_expenses                      :float
#  taxes                                  :float
#  consulting_expenses                    :float
#  other_indirect_costs                   :float
#  number_of_employees                    :integer
#  yearly_working_days                    :integer
#  monthly_contribution_margin            :float
#  last_month_deferred_revenues           :float
#  last_month_total_revenues              :float
#  total_deliveries                       :integer
#  late_deliveries                        :integer
#  non_compliant_deliveries               :integer
#  monthly_employee_suggestions_received  :integer
#  monthly_revenues_new_products          :float
#  monthly_education_hours_manager        :float
#  monthly_education_hours_all_employees  :float
#  reference_period                       :string
#  date_of_entry                          :datetime
#  user_id                                :integer
#  created_at                             :datetime         not null
#  updated_at                             :datetime         not null
#

class Input < ApplicationRecord

    belongs_to :user
    has_many :notes, :foreign_key => "inputs_id", :dependent => :destroy

end
