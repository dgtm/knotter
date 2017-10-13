class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]


  # protected
  # Called before resource.save
  # def build_resource(hash=nil)
  #   super unless resource
  #   resource_class = case resource.user_type
  #   when '1'
  #     'Photographer'
  #   else
  #     'User'
  #   end.constantize
  #   binding.pry
  #   super(hash)
  # end

  private

  def resource_class
    if params[:user] && type = params[:user][:user_type]
      case type
      when '1'
        'Photographer'
      else
        'User'
      end.constantize
    else
      User
    end
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
