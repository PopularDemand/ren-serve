class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    sign_up_fields = [:first_name, :last_name, :nickname]
    devise_parameter_sanitizer.permit(:sign_up, keys: sign_up_fields)
  end
end
