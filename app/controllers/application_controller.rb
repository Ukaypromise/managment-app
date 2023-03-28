class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :update_allowed_parameters, if: :devise_controller?
    before_action :authenticate_user!

   

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:fullName, :lastName, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:fullName, :lastName, :email, :password, :password_confirmation, :current_password)
    end
  end

  def after_sign_in_path_for(_resource_or_scope)
    root_path
  end
end
