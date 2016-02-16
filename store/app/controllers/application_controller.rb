class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) <<:first_name
    devise_parameter_sanitizer.for(:sign_up) <<:last_name
    devise_parameter_sanitizer.for(:sign_up) <<:street
    devise_parameter_sanitizer.for(:sign_up) <<:number
    devise_parameter_sanitizer.for(:sign_up) <<:postel_code
    devise_parameter_sanitizer.for(:sign_up) <<:city


    devise_parameter_sanitizer.for(:account_update) << :first_name
    devise_parameter_sanitizer.for(:account_update) << :last_name
    devise_parameter_sanitizer.for(:account_update) << :street
    devise_parameter_sanitizer.for(:account_update) << :number
    devise_parameter_sanitizer.for(:account_update) << :postel_code
    devise_parameter_sanitizer.for(:account_update) << :city

  end

end
