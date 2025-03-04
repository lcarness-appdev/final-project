class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  skip_before_action :verify_authenticity_token, raise: false

  before_action :authenticate_user!
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:first_name, :last_name, :address, :industry, :year_of_incorporation, :number_of_employees])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:first_name, :last_name, :address, :industry, :year_of_incorporation, :number_of_employees])
  end
  
end
