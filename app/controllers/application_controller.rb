class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private


    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end

    def after_sign_in_path_for(resource)
      goods_path
    end

    def after_sign_out_path_for(resource)
      goods_path
    end


end
