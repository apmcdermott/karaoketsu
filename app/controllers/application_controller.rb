class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper :all
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    profile_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name << :artist_id << :range_low << :range_high
    devise_parameter_sanitizer.for(:account_update) << :first_name << :last_name << :artist_id << :range_low << :range_high
  end
end
