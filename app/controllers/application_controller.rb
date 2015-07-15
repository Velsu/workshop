class ApplicationController < ActionController::Base

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :firstname
    devise_parameter_sanitizer.for(:account_update) << :firstname
    devise_parameter_sanitizer.for(:sign_up) << :lastname
    devise_parameter_sanitizer.for(:account_update) << :lastname
  end
end
