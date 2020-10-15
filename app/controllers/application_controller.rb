class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # deviseのコントローラーから呼び出された場合は、configure_permitted_parametersが呼び出される
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
