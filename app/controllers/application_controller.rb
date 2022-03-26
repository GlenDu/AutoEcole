class ApplicationController < ActionController::Base
  before_action :config_permitted_parametres, if: :devise_controller?

  protected

  def config_permitted_parametres
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :year_born, :postal_code, :phone] )
  end

end
