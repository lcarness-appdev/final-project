class InputsController < ApplicationController
  def list
    @inputs = Input.all

    render("input_templates/list.html.erb")
  end

  def details
    @input = Input.where({ :id => params.fetch("id_to_display") }).first

    render("input_templates/details.html.erb")
  end

  def blank_form
    @input = Input.new

    render("input_templates/blank_form.html.erb")
  end

  def save_new_info
    @input = Input.new

    @input.operating_income = params.fetch("operating_income")
    @input.revenues = params.fetch("revenues")
    @input.invested_capital = params.fetch("invested_capital")
    @input.total_assets = params.fetch("total_assets")
    @input.paid_in_capital = params.fetch("paid_in_capital")
    @input.non_performing_loans_to_customers = params.fetch("non_performing_loans_to_customers")
    @input.long_term_debt = params.fetch("long_term_debt")
    @input.perished_inventory = params.fetch("perished_inventory")
    @input.customer_satisfaction = params.fetch("customer_satisfaction")
    @input.customers_acquired_last_month = params.fetch("customers_acquired_last_month")
    @input.total_customers = params.fetch("total_customers")
    @input.number_promotion_activities_last_month = params.fetch("number_promotion_activities_last_month")
    @input.number_promotion_activities_next_month = params.fetch("number_promotion_activities_next_month")
    @input.utilities_expenses = params.fetch("utilities_expenses")
    @input.rent = params.fetch("rent")
    @input.interest_expenses = params.fetch("interest_expenses")
    @input.taxes = params.fetch("taxes")
    @input.consulting_expenses = params.fetch("consulting_expenses")
    @input.other_indirect_costs = params.fetch("other_indirect_costs")
    @input.number_of_employees = current_user.number_of_employees
    @input.yearly_working_days = params.fetch("yearly_working_days")
    @input.monthly_contribution_margin = params.fetch("monthly_contribution_margin")
    @input.last_month_deferred_revenues = params.fetch("last_month_deferred_revenues")
    @input.last_month_total_revenues = params.fetch("last_month_total_revenues")
    @input.total_deliveries = params.fetch("total_deliveries")
    @input.late_deliveries = params.fetch("late_deliveries")
    @input.non_compliant_deliveries = params.fetch("non_compliant_deliveries")
    @input.monthly_employee_suggestions_received = params.fetch("monthly_employee_suggestions_received")
    @input.monthly_revenues_new_products = params.fetch("monthly_revenues_new_products")
    @input.monthly_education_hours_manager = params.fetch("monthly_education_hours_manager")
    @input.monthly_education_hours_all_employees = params.fetch("monthly_education_hours_all_employees")
    @input.reference_period = params.fetch("reference_period")
    @input.date_of_entry = Time.now.strftime("%B %d, %Y")
    @input.user_id = current_user.id

    if @input.valid?
      @input.save

      redirect_to("/inputs", { :notice => "Input created successfully." })
    else
      render("input_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @input = Input.where({ :id => params.fetch("id_to_prefill") }).first

    render("input_templates/prefilled_form.html.erb")
  end

  def save_edits
    @input = Input.where({ :id => params.fetch("id_to_modify") }).first

    @input.operating_income = params.fetch("operating_income")
    @input.revenues = params.fetch("revenues")
    @input.invested_capital = params.fetch("invested_capital")
    @input.total_assets = params.fetch("total_assets")
    @input.paid_in_capital = params.fetch("paid_in_capital")
    @input.non_performing_loans_to_customers = params.fetch("non_performing_loans_to_customers")
    @input.long_term_debt = params.fetch("long_term_debt")
    @input.perished_inventory = params.fetch("perished_inventory")
    @input.customer_satisfaction = params.fetch("customer_satisfaction")
    @input.customers_acquired_last_month = params.fetch("customers_acquired_last_month")
    @input.total_customers = params.fetch("total_customers")
    @input.number_promotion_activities_last_month = params.fetch("number_promotion_activities_last_month")
    @input.number_promotion_activities_next_month = params.fetch("number_promotion_activities_next_month")
    @input.utilities_expenses = params.fetch("utilities_expenses")
    @input.rent = params.fetch("rent")
    @input.interest_expenses = params.fetch("interest_expenses")
    @input.taxes = params.fetch("taxes")
    @input.consulting_expenses = params.fetch("consulting_expenses")
    @input.other_indirect_costs = params.fetch("other_indirect_costs")
    @input.number_of_employees = current_user.number_of_employees
    @input.yearly_working_days = params.fetch("yearly_working_days")
    @input.monthly_contribution_margin = params.fetch("monthly_contribution_margin")
    @input.last_month_deferred_revenues = params.fetch("last_month_deferred_revenues")
    @input.last_month_total_revenues = params.fetch("last_month_total_revenues")
    @input.total_deliveries = params.fetch("total_deliveries")
    @input.late_deliveries = params.fetch("late_deliveries")
    @input.non_compliant_deliveries = params.fetch("non_compliant_deliveries")
    @input.monthly_employee_suggestions_received = params.fetch("monthly_employee_suggestions_received")
    @input.monthly_revenues_new_products = params.fetch("monthly_revenues_new_products")
    @input.monthly_education_hours_manager = params.fetch("monthly_education_hours_manager")
    @input.monthly_education_hours_all_employees = params.fetch("monthly_education_hours_all_employees")
    @input.reference_period = params.fetch("reference_period")
    @input.date_of_entry = Time.now.strftime("%B %d, %Y")
    @input.user_id = current_user.id

    if @input.valid?
      @input.save

      redirect_to("/inputs/" + @input.id.to_s, { :notice => "Input updated successfully." })
    else
      render("input_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @input = Input.where({ :id => params.fetch("id_to_remove") }).first

    @input.destroy

    redirect_to("/inputs", { :notice => "Input deleted successfully." })
  end
  
  #------------------------------

  # Others:

  def address_to_geo(address)
    require ("open-uri")
    url = 'https://maps.googleapis.com/maps/api/geocode/json?address='+URI.encode(address)+"&key=AIzaSyDG142kyL1Bm0U85niUsn1cSOMZu8TS4Cs"
    results = JSON.parse(open(url).read).fetch("results")
    location = results.first["geometry"]
    location = location["location"]
    lat = location["lat"]
    lng = location["lng"]
    return [lat,lng]
  end

  def home
    @input = current_user.inputs.last
    @address = current_user.address
    @city = current_user.city
    @region = current_user.region
    @country = current_user.country
    @color = ["blue", "red", "purple", "yellow", "green"].sample

    latlng = address_to_geo(@address.to_s + @city.to_s + @region.to_s + @country.to_s)
    @lat = latlng[0]
    @lng = latlng[1]
    
    render("input_templates/home.html.erb")
  end
  
  def customers
    @input = current_user.inputs.last
    render("input_templates/customers.html.erb")
  end
  
  def financials
    @input = current_user.inputs.last
    render("input_templates/financials.html.erb")
  end
  
  def processes
    @input = current_user.inputs.last
    render("input_templates/processes.html.erb")
  end
  
  def educationinnovation
    @input = current_user.inputs.last
    render("input_templates/educationinnovation.html.erb")
  end
  
end
