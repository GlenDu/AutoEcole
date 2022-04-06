class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  #before_action :configure_sign_up_params, if: :devise_controller?
=begin

  protected
  def configure_sign_up_params
    #devise_parameter_sanitizer.permit(:sign_up, keys: permitted_attributes)
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :year_birth, :postal_code, :phone_nb])
  end


  def permitted_attributes
    [:first_name, :last_name, :year_birth, :postal_code, :phone_nb]

    [
      :email,
      :password,
      :password_confirmation,
      student_attributes: %i[:first_name :last_name :year_birth :postal_code :phone_nb]
    ]
  end
=end

end
